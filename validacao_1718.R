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

# Juntar as duas bases
pmad_2018 <- pmad_2018_dom %>% 
  dplyr::left_join(pmad_2018_mor %>% 
                     dplyr::select(-c(A01npessoas,A01nficha_ant)),
                   by=c("referencia"="referencia",
                        "municipio"="municipio",
                        "A01setor"="A01setor",
                        "A01nficha"="A01nficha"))

# Tabular os dados de cada coluna
# Criar um data frame para tabular os dados
dt_res = data.frame()

# Rodar o looping para todas as variáveis
for (i in c(1,2,3,6,8:length(pmad_2018))){
  
  dt_temp = data.frame(t(table(pmad_2018[,i], useNA ="ifany")))
  
  if(nrow(dt_temp)!=0){
    dt_temp$Var1 = names(pmad_2018)[i]
    
    dt_res = rbind(dt_res, dt_temp)
    
  } else
    
    print(i)
}

dt_res <- dt_res %>% 
  dplyr::group_by(Var1) %>% 
  dplyr::mutate(pct=Freq/sum(Freq)) %>% 
  dplyr::ungroup()

x <- pmad_2018 %>% 
  dplyr::filter(is.na(D02)==T)

x <- pmad_2018_mor %>% 
  dplyr::group_by(referencia,municipio,A01setor,A01nficha) %>% 
  dplyr::summarise(n=n()) %>% 
  dplyr::left_join(pmad_2018_dom %>% 
                     dplyr::select(referencia,municipio,A01setor,A01nficha, A01npessoas),
                   by=c("referencia"="referencia",
                        "municipio"="municipio",
                        "A01setor"="A01setor",
                        "A01nficha"="A01nficha")) %>% 
  dplyr::mutate(teste=n-A01npessoas) %>% 
  dplyr::filter(teste!=0)

# Verificar se existem fichas duplicadas  
table(duplicated(paste0(pmad_2018_dom$municipio,pmad_2018_dom$A01setor,pmad_2018_dom$A01nficha)))

# Verificar se todos os domicílios possuem um chefe
x <- pmad_2018_mor %>% 
  dplyr::mutate(chefe=case_when(D02==1~1,
                                TRUE~0)) %>% 
  dplyr::group_by(municipio,A01setor,A01nficha) %>% 
  dplyr::summarise(chefe=sum(chefe)) %>% 
  dplyr::filter(chefe==0)


# Verificar se os domicílios possuem mais de um chefe
x <- pmad_2018_mor %>% 
  dplyr::mutate(chefe=case_when(D02==1~1,
                                TRUE~0)) %>% 
  dplyr::group_by(municipio,A01setor,A01nficha) %>% 
  dplyr::summarise(chefe=sum(chefe)) %>% 
  dplyr::filter(chefe>1)

# Verificar regra da B03 e B04
x <- pmad_2018_dom %>% 
  dplyr::filter(B03==2&B04==99999) %>% 
  dplyr::select(municipio, A01setor, A01nficha, B03, B04) 

# Verificar regra da B03 e B05
x <- pmad_2018_dom %>% 
  dplyr::filter(B03 %in% c(6:9)&B05==99999) %>% 
  dplyr::select(municipio, A01setor, A01nficha, B03, B05) 

# Verificar quantidade de cômodos e banheiros
x <- pmad_2018_dom %>% 
  dplyr::filter(B07==0)

x <- pmad_2018_dom %>% 
  dplyr::filter(B08>B07) %>% 
  dplyr::select(municipio, A01setor, A01nficha, B08, B07)

# Veririficar se tem algum domicílio sem banheiro
x <- pmad_2018_dom %>% 
  dplyr::filter(B09==0) %>% 
  dplyr::select(referencia,municipio, A01setor, A01nficha, B07, B09)

# Veririficar se a soma de banheiro e comodos servindo como dormitorio 
# eh maior que o numero de comodos
x <- pmad_2018_dom %>% 
  dplyr::filter((B08+B09)>B07) %>% 
  dplyr::select(referencia,municipio, A01setor, A01nficha, B07:B09)

# Verificar consistência da questão B10 e B12
x <- pmad_2018_dom %>% 
  dplyr::filter(B12==3&B10==1)

x <- pmad_2018_dom %>% 
  dplyr::filter(B13==4&B10==1)


x <- pmad_2018_dom %>% 
  dplyr::filter(B15==3&B14==1)

x <- pmad_2018_dom %>% 
  dplyr::filter(B16==4&B14==1)



# Verificar se pessoas com veiculos nao possuem resposta em emplacamento
x <- pmad_2018_dom %>% 
  dplyr::filter(C011>0|C012>0|C013>0|C014>0|C015>0|C016>0|C019>0) %>%
  dplyr::filter(C021==0&C022==0&C023==0) %>% 
  dplyr::select(referencia,municipio, A01setor, A01nficha,C011:C016,C019,C021:C023)

x <- pmad_2018_dom %>% 
  dplyr::mutate(veiculo=C011+C012+C013+C014+C015+C016+C019,
                placa=C021+C022+C023) %>% 
  dplyr::filter(veiculo!=placa) %>%  
  dplyr::select(referencia,municipio, A01setor, A01nficha,C011:C016,C019,C021:C023, veiculo, placa)

# write.table(x,"/stage/u36072/pmad1718ajuste.csv",
#             sep = ";",
#             dec = ",",
#             row.names = F)

# Verificar se pessoas sem veiculos possuem resposta em emplacamento
x <- pmad_2018_dom %>% 
  dplyr::filter(C011==0&C012==0&C013==0&C014==0&C015==0&C016==0&C019==0) %>%
  dplyr::filter(C021>0|C022>0|C023>0) %>% 
  dplyr::select(referencia,municipio, A01setor, A01nficha,C011:C016,C018,C019,C021:C023)

# Verificar domicilios sem geladeira e sem fogao
x <- pmad_2018_dom %>% 
  dplyr::filter(C0404==0|C0408==0) %>% 
  dplyr::select(C0401:C0407,C0409:C0422) %>% 
  dplyr::mutate(total=rowSums(.))

# Verificar domicilios sem nenhum eletrodomestico
x <- pmad_2018_dom %>% 
  dplyr::select(referencia,municipio, A01setor, A01nficha,C0401:C0422) %>% 
  dplyr::filter_at(vars(C0401:C0422),
                   all_vars(.==0))

# Validar mensalista morador com a composicao de pessoas no domicilio
x <- pmad_2018_mor %>% 
  dplyr::mutate(empregado=case_when(D02==9~1,
                                    TRUE~0)) %>% 
  dplyr::group_by(referencia,municipio, A01setor, A01nficha) %>% 
  dplyr::summarise(empregado=sum(empregado)) %>% 
  dplyr::ungroup() %>% 
  dplyr::left_join(
    pmad_2018_dom %>% 
      dplyr::select(referencia,municipio, A01setor, A01nficha,C051)) %>% 
  dplyr::filter(C051>0&empregado==0)


x <- pmad_2018_mor %>% 
  dplyr::mutate(empregado=case_when(D02==9~1,
                                    TRUE~0)) %>% 
  dplyr::group_by(referencia,municipio, A01setor, A01nficha) %>% 
  dplyr::summarise(empregado=sum(empregado)) %>% 
  dplyr::ungroup() %>% 
  dplyr::left_join(
    pmad_2018_dom %>% 
      dplyr::select(referencia,municipio, A01setor, A01nficha,C051)) %>% 
  dplyr::filter(C051==0&empregado>0)

# Verificar a idade do chefe e do conjuge
x <- pmad_2018_mor %>% 
  dplyr::filter(D02 %in% c(1,2)&D05<14)

# Verificar se existe somente um chefe
x <- pmad_2018_mor %>% 
  dplyr::mutate(chefe=case_when(D02==1~1,
                                TRUE~0)) %>% 
  dplyr::group_by(A01nficha) %>% 
  dplyr::mutate(chefe=sum(chefe)) %>% 
  dplyr::filter(chefe>1) %>% 
  dplyr::select(A01nficha) %>% 
  dplyr::distinct()

# Verificar se existe somente um cônjuge
x <- pmad_2018_mor %>% 
  dplyr::mutate(conjuge=case_when(D02 %in% c(2,3)~1,
                                TRUE~0)) %>% 
  dplyr::group_by(A01nficha) %>% 
  dplyr::mutate(conjuge=sum(conjuge)) %>% 
  dplyr::filter(conjuge>1) %>% 
  dplyr::select(A01nficha) %>% 
  dplyr::distinct()

x <- pmad_2018_mor %>% 
  dplyr::filter(A01nficha %in% x$A01nficha)

# Verificar a marcação de cônjuge do mesmo sexo
x <- pmad_2018_mor %>% 
  dplyr::mutate(conj_sd_m=case_when(D02==2&D03==2~1,
                                 TRUE~0)) %>% 
  dplyr::group_by(A01nficha) %>% 
  dplyr::mutate(conj_sd_m=sum(conj_sd_m)) %>% 
  dplyr::filter(conj_sd_m==1&D02==1&D03==2)

x <- pmad_2018_mor %>% 
  dplyr::filter(A01nficha %in% x$A01nficha) %>%
  dplyr::filter(D02==2) %>%
  dplyr::select(A01nficha,D01)


x <- pmad_2018_mor %>% 
  dplyr::mutate(conj_sd_h=case_when(D02==2&D03==1~1,
                                    TRUE~0)) %>% 
  dplyr::group_by(A01nficha) %>% 
  dplyr::mutate(conj_sd_h=sum(conj_sd_h)) %>% 
  dplyr::filter(conj_sd_h==1&D02==1&D03==1)


x <- pmad_2018_mor %>% 
  dplyr::mutate(conj_si_m=case_when(D02==3&D03==2~1,
                                    TRUE~0)) %>% 
  dplyr::group_by(A01nficha) %>% 
  dplyr::mutate(conj_si_m=sum(conj_si_m)) %>% 
  dplyr::filter(conj_si_m==1&D02==1&D03==1)

x <- pmad_2018_mor %>% 
  dplyr::filter(A01nficha %in% x$A01nficha) %>%
  dplyr::filter(D02==3) %>%
  dplyr::select(A01nficha,D01)


x <- pmad_2018_mor %>% 
  dplyr::mutate(conj_si_h=case_when(D02==3&D03==1~1,
                                    TRUE~0)) %>% 
  dplyr::group_by(A01nficha) %>% 
  dplyr::mutate(conj_si_h=sum(conj_si_h)) %>% 
  dplyr::filter(conj_si_h==1&D02==1&D03==2)

x <- pmad_2018_mor %>% 
  dplyr::filter(A01nficha %in% x$A01nficha) %>%
  dplyr::filter(D02==3) %>%
  dplyr::select(A01nficha,D01)

# Domicilios nos quais existem pessoas sem idade informada
x <- pmad_2018_mor %>% 
  dplyr::mutate(idade_ruim=case_when(D05==999~1,
                                     TRUE~0)) %>%
  dplyr::group_by(A01nficha) %>% 
  dplyr::mutate(idade_ruim=sum(idade_ruim)) %>% 
  dplyr::filter(idade_ruim>1) %>% 
  dplyr::select(referencia,A01nficha, D01,D02,D03,D05,D07,D12,D15,E01,E03,E04,E06) %>% 
  dplyr::mutate(D02=case_when(D02==1~"Responsável",
                              D02 %in% c(2,3)~"Cônjuge",
                              D02==4~"Filho",
                              D02==5~"Enteado",
                              D02==6~"Outro parente",
                              D02==7~"Agregado",
                              D02==8~"Pensionista",
                              D02==9~"Doméstico",
                              D02==10~"Outro"),
                D03=case_when(D03==1~"Masculino",
                              D03==2~"Feminino"),
                D07=case_when(D07==1~"Solteiro",
                              D07 %in% c(2:4,7)~"Casado",
                              D07==5~"Divorciado",
                              D07==6~"Separado",
                              D07==8~"Viúvo"),
                E01=case_when(E01==0~"Não estuda",
                              TRUE~"Estuda"),
                E03=case_when(E03==1~"Analfabeto",
                              E03==2~"Sabe ler e escrever",
                              E03==3~"Alfabetização JA",
                              E03==4~"Ensino especial",
                              E03==5~"Maternal e creche",
                              E03==6~"Educação infantil",
                              E03==7~"EJA fundamental incompleto",
                              E03==8~"EJA fundamental completo",
                              E03==9~"EJA médio incompleto",
                              E03==10~"EJA médio completo",
                              E03==11~"Fundamental incompleto",
                              E03==12~"Fundamental completo",
                              E03==13~"Médio incompleto",
                              E03==14~"Médio completo",
                              E03==15~"Superior incompleto",
                              E03==16~"Superior completo",
                              E03==17~"Especialização",
                              E03==18~"Mestrado",
                              E03==19~"Doutorado",
                              E03==88~"Não sabe",
                              TRUE~"Fora das escola"),
                E06=case_when(E06==0~"Não trabalha",
                              E06==1~"Trabalha",
                              E06==2~"Aposentado",
                              E06==3~"Aposentado trabalhando",
                              E06==4~"Pensionista",
                              E06==5~"Do lar",
                              E06==6~"Desempregado",
                              E06==7~"Estudante",
                              E06==8~"Voluntário"))

# write.table(x,"/stage/u36072/pmad1718ajuste.csv",
#             sep = ";",
#             dec = ",",
#             row.names = F,
#             fileEncoding = "latin1",
#             na="")

# 184 pessoas com idade nao informada

# Verificar se filho eh mais velho que o responsavel
# Mudar essas pessoas para D02 = 6
x <- pmad_2018_mor %>% 
  dplyr::filter(D02==4&D05!=999) %>%
  dplyr::mutate(idade_filho=D05,
                D01_filho=D01) %>% 
  dplyr::select(referencia,municipio, A01setor, A01nficha,idade_filho,D01_filho) %>% 
  dplyr::left_join(pmad_2018_mor %>% 
                     dplyr::filter(D02==1&D05!=999) %>% 
                     dplyr::select(referencia,municipio, A01setor, A01nficha,A01nficha_ant,D01,D05)) %>% 
  dplyr::filter(idade_filho>D05) %>% 
  dplyr::select(A01nficha,D01_filho)


# Verificar se enteado eh mais velho que o conjuge
x <- pmad_2018_mor %>% 
  dplyr::filter(D02==5&D05!=999) %>%
  dplyr::mutate(idade_filho=D05) %>% 
  dplyr::select(referencia,municipio, A01setor, A01nficha,idade_filho) %>% 
  dplyr::left_join(pmad_2018_mor %>% 
                     dplyr::filter(D02==2&D05!=999) %>% 
                     dplyr::select(referencia,municipio, A01setor, A01nficha,D05)) %>% 
  dplyr::filter(idade_filho>D05)

# Verificar idade da resposabilidade compartilhada
x <- pmad_2018_mor %>% 
  dplyr::filter(D06==1&D05>14) %>% 
  dplyr::select(referencia,municipio, A01setor, A01nficha,D02,D05,D06)

# Verificar idade das pessoas casadas
# Marcar casos errados com 99
x <- pmad_2018_mor %>% 
  dplyr::filter(D05<14&D07!=99) %>% 
  dplyr::select(referencia,municipio, A01setor, A01nficha,D02,D01,D05,D07) %>% 
  dplyr::select(A01nficha,D01)

x <- pmad_2018_mor %>% 
  dplyr::filter(D05>=14&D07==99) %>% 
  dplyr::select(referencia,municipio, A01setor, A01nficha,D02,D01,D05,D07) %>% 
  dplyr::select(A01nficha,D01)

# Verificar a consistência de D10=9 e D12 diferente de 9999 
x <- pmad_2018_mor %>% 
  dplyr::filter(D10==9&D12!=9999)

# Verificar local de nascimento
# Marcar casos errados em D11 com 99
x <- pmad_2018_mor %>% 
  dplyr::filter(D10!=1&D11!=99) %>% 
  dplyr::select(referencia,municipio, A01setor, A01nficha,D01,D10,D11) %>% 
  dplyr::select(A01nficha,D01)

x <- pmad_2018_mor %>% 
  dplyr::filter(D10==1&D11==99) %>% 
  dplyr::select(referencia,municipio, A01setor, A01nficha,D10,D11)


# Verificar tempo de moradia no municipio com idade
# Marcar a idade em D15 para os casos com problema
x <- pmad_2018_mor %>% 
  dplyr::filter(D05!=999, !D15 %in% c(888,999)) %>% 
  dplyr::filter(D05<D15) %>% 
  dplyr::select(referencia,municipio, A01setor, A01nficha,D05,D15)

# Verificar o ano de chegada com a idade
x <- pmad_2018 %>% 
  dplyr::filter(D05<(as.numeric(substring(datavisita,1,4))-D12-1)) %>% 
  dplyr::mutate(ano_max=as.numeric(substring(datavisita,1,4))-D05-1) %>% 
  dplyr::select(referencia,municipio, A01setor, A01nficha,D05,D12, ano_max) 

x <- pmad_2018 %>% 
  dplyr::filter(!D12 %in% c(9999,8888)) %>% 
  dplyr::filter(D15>D12-D05) %>%  
  dplyr::select(referencia,municipio, A01setor, A01nficha,D05,D12,D15) 


# Verificar idade da violência
x <- pmad_2018_mor %>% 
  dplyr::filter(D05<16&D20!=99)

x <- pmad_2018_mor %>% 
  dplyr::filter(D05<16&D21!=99)

x <- pmad_2018_mor %>% 
  dplyr::filter(D05<16&D22!=99)

# Validar frequencia religiosa e religiao
x <- pmad_2018_mor %>% 
  dplyr::filter(D08==0&D09!=99)


# Verificar fluxo violência
# Se D20=88 entao D21=99 e D22=99
x <- pmad_2018_mor %>% 
  dplyr::filter(D20%in% c(0,88)&D21!=99)

x <- pmad_2018_mor %>% 
  dplyr::filter(D20 %in% c(1:14)&D21==99)

x <- pmad_2018_mor %>% 
  dplyr::filter(D20 %in% c(1:14)&D22==99)

# Verificar fluxo escola
x <- pmad_2018_mor %>% 
  dplyr::filter(E01 %in% 1:2) %>% 
  dplyr::filter(E02==99) %>% 
  dplyr::select(referencia,municipio, A01setor, A01nficha,D01,D05,E01,E02)

# Se E01=88 então E02=99
x <- pmad_2018_mor %>% 
  dplyr::filter(E01==88&E02!=99)

x <- pmad_2018_mor %>% 
  dplyr::filter(E01 %in% c(1:4)) %>% 
  dplyr::filter(E03 %in% c(20,99)) %>% 
  dplyr::select(referencia,municipio, A01setor, A01nficha,D01,D05,E01,E03)

x <- pmad_2018_mor %>% 
  dplyr::filter(E01 %in% c(0,3,4)) %>% 
  dplyr::filter(E02!=99) %>% 
  dplyr::select(referencia,municipio, A01setor, A01nficha,D01,D05,E01,E02) %>% 
  dplyr::select(A01nficha,D01)

x <- pmad_2018_mor %>% 
  dplyr::filter(E03==99&D05>=6) %>% 
  dplyr::select(referencia,municipio, A01setor, A01nficha,D01,D05,E01,E03)

x <- pmad_2018_mor %>% 
  dplyr::filter(E03==88&E04!=99)


x <- pmad_2018_mor %>% 
  dplyr::filter(E03 %in% c(1:10,12,14,16)&E04!=99)

x <- pmad_2018_mor %>% 
  dplyr::filter(E03 %in% c(11,13,15,17:19)&E04==99)

# Verificar idade das pessoas que frequentam creche
x <- pmad_2018_mor %>% 
  dplyr::filter(E01==1&E03==5&D05>3) %>% 
  dplyr::select(referencia,municipio, A01setor, A01nficha,D01,D05,E01,E03,E04)


# Verificar idade das pessoas que frequentam pre-escola
x <- pmad_2018_mor %>% 
  dplyr::filter(E01==1&E03==6&D05<4&D05>5) %>% 
  dplyr::select(referencia,municipio, A01setor, A01nficha,D01,D05,E01,E03,E04)

# Verificar idade das pessoas que frequentam ensino fundamental
x <- pmad_2018_mor %>% 
  dplyr::filter(E01==1&E03==11&D05<6) %>% 
  dplyr::select(referencia,municipio, A01setor, A01nficha,D01,D05,E01,E03,E04)



# Verificar idade das pessoas com fundamental completo
x <- pmad_2018_mor %>% 
  dplyr::filter(E03==12&D05<12) %>% 
  dplyr::select(referencia,municipio, A01setor, A01nficha,A01nficha_ant,D05,E03,E04)

# Verificar idade das pessoas com EJA fundamental
x <- pmad_2018_mor %>% 
  dplyr::filter(E03 %in% c(7,8)&D05<15) %>% 
  dplyr::select(referencia,municipio, A01setor, A01nficha,D05,D01,E03,E04)

# Verificar idade das pessoas com EJA médio
x <- pmad_2018_mor %>% 
  dplyr::filter(E03 %in% c(9,10)&D05<18) %>% 
  dplyr::select(referencia,municipio, A01setor, A01nficha,D05,E03,E04)

# Verificar idade das pessoas no ensino superior incompleto
x <- pmad_2018_mor %>% 
  dplyr::filter(E03==15&D05<16) %>% 
  dplyr::select(referencia,municipio, A01setor, A01nficha,D05,E03,E04)

# Verificar idade das pessoas no ensino superior completo
x <- pmad_2018_mor %>% 
  dplyr::filter(E03==16&D05<18) %>% 
  dplyr::select(referencia,municipio, A01setor, A01nficha,A01nficha_ant,D01,D05,E03,E04)

# Verificar idade das pessoas na especialização
x <- pmad_2018_mor %>% 
  dplyr::filter(E03==17&D05<18) %>% 
  dplyr::select(referencia,municipio, A01setor, A01nficha,A01nficha_ant,D01,D05,E03,E04)

# Verificar idade das pessoas na mestrado
x <- pmad_2018_mor %>% 
  dplyr::filter(E03%in% c(18,19)&D05<21) %>% 
  dplyr::select(referencia,municipio, A01setor, A01nficha,D01,D05,E03,E04)

# Verificar E03=20 e idade
x <- pmad_2018_mor %>% 
  dplyr::filter(E03==20&!D05 %in% (6:14))

# Verificar E03=99 e idade
x <- pmad_2018_mor %>% 
  dplyr::filter(E03==99&!D05 %in% (0:5)) %>% 
  dplyr::select(referencia,municipio, A01setor, A01nficha,D05,E03,E04)

# Verificar compatibilidade das series do esino fundamental
x <- pmad_2018_mor %>% 
  dplyr::filter(E03 %in% c(11)&!E04 %in% c(1:9,88)) %>% 
  dplyr::select(referencia,municipio, A01setor, A01nficha,D05,E03,E04)

x <- pmad_2018_mor %>% 
  dplyr::filter(E03 %in% c(12)&!E04 %in% c(99)) %>% 
  dplyr::select(referencia,municipio, A01setor, A01nficha,D05,E03,E04)

# Verificar compatibilidade das series do esino medio
x <- pmad_2018_mor %>% 
  dplyr::filter(E03 %in% c(13)&!E04 %in% c(1:4,88)) %>% 
  dplyr::select(referencia,municipio, A01setor, A01nficha,D05,E03,E04)

x <- pmad_2018_mor %>% 
  dplyr::filter(E03 %in% c(14)&!E04 %in% c(99)) %>% 
  dplyr::select(referencia,municipio, A01setor, A01nficha,D05,E03,E04)

# Verificar idade com pronatec
x <- pmad_2018_mor %>% 
  dplyr::filter(E05 %in% c(1:4)&D05<16) %>% 
  dplyr::select(referencia,municipio, A01setor, A01nficha,D05,E05)

# Verificar idade de pessoas com trabalho
x <- pmad_2018_mor %>% 
  dplyr::filter(E06!=99&D05<10) %>% 
  dplyr::select(referencia,municipio, A01setor, A01nficha,D05,E06)

# Verificar idade de pessoas aposentadas
x <- pmad_2018_mor %>% 
  dplyr::filter(E06 %in% c(2,3)&D05<14) %>% 
  dplyr::select(referencia,municipio, A01setor, A01nficha,D01,D05,E06:E13)

# Verificar posicao na ocupação com atividade remunerada
x <- pmad_2018_mor %>% 
  dplyr::filter(E07 %in% c(5:8,18,19)&E08 %in% c(2,6,7,8,9,10,14)) %>% 
  dplyr::select(referencia,municipio, A01setor, A01nficha,D05,E07,E08)

# Verificar meio de transporte com local de trabalho
x <- pmad_2018_mor %>% 
  dplyr::filter(E09 %in% c(41:55)&E11==8) %>% 
  dplyr::select(referencia,municipio, A01setor, A01nficha,D05,E09,E11)

# Verificar as respostas de trabalho para menores de 10 anos
x <- pmad_2018_mor %>% 
  dplyr::filter(D05<10) %>% 
  dplyr::select(E06:E15) %>% 
  dplyr::filter_all(any_vars(!.%in%c(99999,99)))

# Verificar as respostas de trabalho para maiores de 10 anos
x <- pmad_2018_mor %>% 
  dplyr::filter(D05>=10,E06 %in% c(0,2,4:8)) %>% 
  dplyr::select(referencia,E07:E12) %>% 
  dplyr::filter_at(vars(E07:E12),
                   any_vars(!.%in%c(99999,99)))

x <- pmad_2018_mor %>% 
  dplyr::filter(D05>=10,E06 %in% c(1,3)) %>% 
  dplyr::select(referencia,E07:E12) %>% 
  dplyr::filter_at(vars(E07:E12),
                   any_vars(.%in%c(99999,99)))

x <- pmad_2018_mor %>% 
  dplyr::filter(D05>=10,E06 %in% c(8)) %>% 
  dplyr::select(referencia,E07:E12) %>% 
  dplyr::filter_at(vars(E07:E12),
                   any_vars(!.%in%c(99999,99)))


x <- pmad_2018_mor %>% 
  dplyr::filter(D05>=10) %>% 
  dplyr::select(E13) %>% 
  dplyr::filter_all(any_vars(.%in%c(99,99999)))

x <- pmad_2018_mor %>% 
  dplyr::filter(D05>=14&E14==99&E06%in%c(1,4,6)) %>% 
  dplyr::select(referencia,municipio, A01setor, A01nficha,D05,E06,E14) 

x <- pmad_2018_mor %>% 
  dplyr::filter(D05<10&E15!=99)