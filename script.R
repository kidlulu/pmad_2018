library(RODBC)
library(dplyr)
rm(list = ls())
db <- RODBC::odbcConnect("db_codeplan2", uid=35866, pwd='Meliodas083')
RODBC::sqlTables(db) %>% 
  dplyr::filter(TABLE_SCHEM=="pmad2018") %>%
  dplyr::select(TABLE_NAME)

v <- RODBC::sqlQuery(db,"select * from pmad2018.visita_1023")

colnames(visita)



table(visita$municipio)

visita$municipio <- case_when(visita$municipio=="Águas Lindas"~"5200258")

visita$A01municipio <- stringr::str_replace(visita$A01municipio, "Águas Lindas", "5200258")

