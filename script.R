library(RODBC)
library(dplyr)
library(srvyr)
library(stringr)
rm(list = ls())
db <- odbcConnect("db_codeplan2", uid=35866, pwd='Meliodas083')
sqlTables(db) %>% 
  filter(TABLE_SCHEM=="pmad2018") %>%
  select(TABLE_NAME)

d <- sqlQuery(db,"select * from pmad2018.domicilios_1023")

colnames(d)

domicilio <- d %>% 
  mutate(tipo=as.numeric(case_when(trimws(d$tipo)=='Tipo.1'~1,
                                   trimws(d$tipo)=='Tipo.2'~2,
                                   trimws(d$tipo)=='Tipo.3'~3,
                                   trimws(d$tipo)=='Tipo.4'~4,
                                   trimws(d$tipo)=='Tipo.5'~5,
                                   trimws(d$tipo)=='Tipo.6'~6,
                                   trimws(d$tipo)=='Tipo.7A'~71,
                                   trimws(d$tipo)=='Tipo.7B'~72,
                                   trimws(d$tipo)=='Tipo.7C'~73,
                                   trimws(d$tipo)=='Tipo.7D'~74,
                                   trimws(d$tipo)=='Tipo.8'~8)),
         B01=as.numeric(case_when(trimws(d$B01)=='B01.1'~1,
                                  trimws(d$B01)=='B01.2'~2,
                                  trimws(d$B01)=='B01.3'~3)),
         B02=as.numeric(case_when(trimws(d$B02)=='B02.1'~1,
                                  trimws(d$B02)=='B02.2'~2,
                                  trimws(d$B02)=='B02.3'~3,
                                  trimws(d$B02)=='B02.4'~4,
                                  trimws(d$B02)=='B02.5'~5,
                                  trimws(d$B02)=='B02.6'~6,
                                  trimws(d$B02)=='B02.7'~7,
                                  trimws(d$B02)=='B02.8'~8)),
         B03=as.numeric(case_when(trimws(d$B03)=='B03.1'~1,
                                  trimws(d$B03)=='B03.2'~2,
                                  trimws(d$B03)=='B03.3'~3,
                                  trimws(d$B03)=='B03.4'~4,
                                  trimws(d$B03)=='B03.5'~5,
                                  trimws(d$B03)=='B03.6'~6,
                                  trimws(d$B03)=='B03.7'~7,
                                  trimws(d$B03)=='B03.8'~8,
                                  trimws(d$B03)=='B03.9'~9,
                                  trimws(d$B03)=='B03.10'~10,
                                  trimws(d$B03)=='B03.11'~11,
                                  trimws(d$B03)=='B03.12'~12,
                                  trimws(d$B03)=='B03.13'~13,
                                  trimws(d$B03)=='B03.14'~14,
                                  trimws(d$B03)=='B03.15'~15)),
         B04=as.numeric(case_when(trimws(d$B0477777)=='B04.77777'~77777,
                                  trimws(d$B0488888)=='B04.88888'~88888,
                                  d$B041>=0~d$B041))
  ) 

colnames(visita)

table(d$tipo)

visita$A01municipio <- stringr::str_replace(visita$A01municipio, "Águas Lindas", "5200258")

as.numeric(x)
as.logical(x)
as.character(x)
as.factor(x)