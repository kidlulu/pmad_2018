library(RODBC)
rm(list = ls())
db <- RODBC::odbcConnect("db_codeplan2", uid=35866, pwd='Meliodas083')
RODBC::sqlTables(db)
tabelas <- RODBC::sqlTables(db)
tabelas[tabelas[,2]=='pmad2018',]$TABLE_NAME
visita <- RODBC::sqlQuery(db,"select * from pmad2018.visita_1023")
