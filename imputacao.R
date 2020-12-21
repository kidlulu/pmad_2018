rm(list = ls())
# Fluxos PMAD

# Carregar pacotes
library(tidyverse)
library(survey)
library(srvyr)
library(DBI)

# Abrir conexão com o banco de dados
db <- DBI::dbConnect(odbc::odbc(),"db_codeplan",
                     uid=Sys.getenv("matricula"),
                     pwd=Sys.getenv("senha"))

# Puxar a base de dados de domicilios
pmad_2018_dom <- DBI::dbGetQuery(db,"select * from pmad2018.dp_dom_1718")

# Puxar a base de dados de moradores
pmad_2018_mor <- DBI::dbGetQuery(db, "select * from pmad2018.dp_mor_1718")


# Montar uma base de covariáveis a partir da informação do chefe
# do domicílio, presentes na base de pessoas
chefes <- pmad_2018_mor %>%
  dplyr::filter(D02==1) %>%
  dplyr::select(A01nficha, D03, D04, D05,
                E06) %>%
  dplyr::mutate(negro=case_when(D04 %in% c(2,4,5)~1,
                                TRUE~0),
                mulher=case_when(D03==2~1,
                                 TRUE~0),
                trabalha=case_when(E06 %in% c(1:3)~1,
                                   TRUE~0)) %>%
  dplyr::select(A01nficha,negro,mulher,trabalha,D05)

# Criar lista com domicílios problemáticos
x <- pmad_2018_dom %>% 
  dplyr::filter_at(vars(C0401:C0403,C0405:C0407,C0409:C0422),
                   all_vars(. %in% c(0,77777))) %>% 
  dplyr::select(A01nficha)

# Ajustar as variáveis problemáticas para a imputação
imput_dom <-
  pmad_2018_dom %>%
  dplyr::left_join(chefes) %>%
  dplyr::select(# Variáveis problemáticas
    C0401:C0422,
    # Variáveis base para imputação dos domicílios
    A01npessoas,B02,B03,B07:B09,B10,B14,B17,B18, B191:B218,C011,C012,C013,C031,C032,
    # Variáveis base dos moradores para imputação 
    negro,mulher,trabalha,D05,
    # Variáveis auxiliares para gerar a base
    A01nficha) %>%
  # Gerar missing para as variáveis problemáticas
  dplyr::mutate_at(vars(C0401:C0422),
                   list(~case_when(A01nficha %in% x$A01nficha~NA_real_,
                                  TRUE~as.numeric(.)))) %>%
  # Criar um marcador para as variáveis que serão imputadas
  dplyr::mutate_at(vars(C0401:C0422),
                   list(imput=~case_when(is.na(.)==T~1,
                                        TRUE~0)))

# Iniciar a inputação
set.seed(8888)

# Verificar a correlação entre as variáveis
psych::lowerCor(imput_dom[,sapply(imput_dom, is.numeric)])

# Verificar o método indicado de imputação para cada variável
m <- mice::make.method(imput_dom)

# Montar a matriz com os preditores
x <- mice::make.predictorMatrix(imput_dom, blocks = mice::make.blocks(imput_dom))

# Zerar as variáveis de imputação (não serão preditores)
x[,c("A01nficha",
     "C0401","C0402","C0403","C0404","C0405","C0406",
     "C0407","C0408","C0409","C0410","C0411","C0412",
     "C0413","C0414","C0415","C0416","C0417","C0418",
     "C0419","C0420","C0421","C0422",
     "C0401_imput","C0402_imput","C0403_imput","C0404_imput","C0405_imput","C0406_imput",
     "C0407_imput","C0408_imput","C0409_imput","C0410_imput","C0411_imput","C0412_imput",
     "C0413_imput","C0414_imput","C0415_imput","C0416_imput","C0417_imput","C0418_imput",
     "C0419_imput","C0420_imput","C0421_imput","C0422_imput")] <- 0

# Verificar o padrão de missing
#md.pattern(imput_dom)

# Criar um objeto com as imputações
imputed_Data <- mice::mice(imput_dom, m=1, maxit = 50, method = m, seed = 8888,
                           #pred = diag(ncol(imput_dom)),
                           predictorMatrix=x)

# Armazenar a informação coluna imputada
completeData <- data.frame(mice::complete(imputed_Data)) 

purrr::map(completeData[,1:22],table,useNA="ifany")

prop.table(table(completeData$C0408))

nomes <- c(names(pmad_2018_dom),
           "C0401_imput","C0402_imput","C0403_imput","C0404_imput","C0405_imput","C0406_imput",
           "C0407_imput","C0408_imput","C0409_imput","C0410_imput","C0411_imput","C0412_imput",
           "C0413_imput","C0414_imput","C0415_imput","C0416_imput","C0417_imput","C0418_imput",
           "C0419_imput","C0420_imput","C0421_imput","C0422_imput")

# Juntar as informações imputadas à base original
pmad_2018_dom_imput <- pmad_2018_dom %>%
  dplyr::select(-c(C0401:C0422)) %>%
  dplyr::left_join(completeData %>%
                     dplyr::select(A01nficha,C0401:C0422,
                                   C0401_imput:C0422_imput)) %>%
  # Ajustar a ordem das variáveis
  dplyr::select(nomes) 

# Ajustar a população
pmad_2018_dom_imput <- pmad_2018_dom_imput %>% 
  dplyr::mutate(pop_proj=case_when(A01setor=="Valparaíso de Goiás"~164723,
                                   A01setor=="Novo Gama"~112426,
                                   A01setor=="Cidade Ocidental: Sede"~54532,
                                   A01setor=="Cidade Ocidental: Jardim ABC"~12387,
                                   A01setor=="Luziânia: Sede"~120941,
                                   A01setor=="Luziânia: Jardim Ingá"~70310,
                                   A01setor=="Águas Lindas de Goiás"~206758,
                                   A01setor=="Santo Antônio do Descoberto"~66138,
                                   A01setor=="Planaltina"~84739,
                                   A01setor=="Formosa"~109880,
                                   A01setor=="Padre Bernardo: Sede"~16516,
                                   A01setor=="Padre Bernardo: Monte Alto"~9602,
                                   A01setor=="Alexânia"~22546,
                                   A01setor=="Cristalina: Sede"~39451,
                                   A01setor=="Cristalina: Campos Lindos/Marajó"~8191,
                                   A01setor=="Cocalzinho de Goiás: Sede"~7586,
                                   A01setor=="Cocalzinho de Goiás: Girassol/Edilând"~7415),
                municipio=case_when(municipio=="Santo Antônio do Descobert"~"Santo Antônio do Descoberto",
                                    TRUE~municipio),
                A01setor=case_when(A01setor=="Cocalzinho de Goiás: Girassol/Edilând"~"Cocalzinho de Goiás: Girassol/Edilândia",
                                   TRUE~A01setor))


# Ajustar o fator de expansão
fator <- pmad_2018_dom_imput %>% 
  dplyr::left_join(pmad_2018_mor %>% 
                     dplyr::select(A01nficha,D01)) %>% 
  dplyr::select(A01setor,pop_proj) %>% 
  dplyr::group_by(A01setor) %>% 
  dplyr::summarise(n=n(),
                   N=first(pop_proj)) %>% 
  dplyr::mutate(FATOR_MUN=N/n) %>% 
  dplyr::select(A01setor,FATOR_MUN)

pmad_2018_dom_imput <- pmad_2018_dom_imput %>%
  dplyr::select(-FATOR_MUN) %>%
  dplyr::left_join(fator) %>%
  # Ajustar a ordem das variáveis
  dplyr::select(nomes)

# Subir a base imputada no banco de dados
x <- data.frame(type=sapply(pmad_2018_dom_imput, class),
                nc=unlist(lapply(pmad_2018_dom_imput, function(x) max(nchar(x), na.rm = T))),
                tm=as.numeric(unlist(lapply(pmad_2018_dom_imput, function(x) max(x, na.rm = T))))) %>%
  # Ajustar os casos em que todas as colunas são vazias
  dplyr::mutate(nc=ifelse(nc==-Inf,2,nc),
                # Determinar o tamanho dos campos VARCHAR e fazer o de para dos demais campos
                coltype=case_when(type=="character"~paste0("VARCHAR(",nc,")"),
                                  type=="numeric"~'float',
                                  type %in% c("integer","integer64")~"bigint",
                                  TRUE~'VARCHAR(1)'),
                coltype=case_when(type=="integer" & tm >= -2^31 & tm <= 2^31-1~"int",
                                  TRUE~coltype),
                coltype=case_when(type=="integer" & tm >= -2^15 & tm <= 2^15-1~"smallint",
                                  TRUE~coltype),
                coltype=case_when(type=="integer" & tm >= 0 & tm <= 255~"tinyint",
                                  TRUE~coltype))

columnTypes <- setNames(as.list(x$coltype),names(pmad_2018_dom_imput))

dbExecute(db,"ALTER USER [36072] WITH DEFAULT_SCHEMA = [pmad2018]")

DBI::dbGetQuery(db,"IF OBJECT_ID('pmad2018.dp_dom_1718_imput', 'U') IS NOT NULL DROP TABLE pmad2018.dp_dom_1718_imput")

DBI::dbWriteTable(db,"dp_dom_1718_imput",pmad_2018_dom_imput,append = TRUE, field.types = columnTypes)

dbExecute(db,"grant select on pmad2018.dp_dom_1718_imput to [36692], [11711]")
