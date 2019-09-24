setwd('/u02/u35866/pmad_2018')
getwd()
library(DBI)
library(odbc)
library(sidrar)
library(tidyverse)
rm(list = ls())

db <- DBI::dbConnect(odbc(),"db_codeplan", uid="", pwd="")

dom <- data.table::fread('PMAD2018_dom.csv',#colClasses = 'characterer'#
                         encoding = 'Latin-1') %>% 
  dplyr::mutate(setorcensitario = as.character(setorcensitario))

x <- data.frame(type=sapply(dom, class),
                nc=unlist(lapply(dom, function(x) max(nchar(x), na.rm = T))),
                tm=as.numeric(unlist(lapply(dom, function(x) max(x, na.rm = T))))) %>%
  # Ajustar os casos em que todas as colunas são vazias
  dplyr::mutate(nc=ifelse(nc==-Inf,2,nc),
                # Determinar o tamanho dos campos VARCHAR e fazer o de para dos demais campos
                coltype=case_when(type=="character"~paste0("VARCHAR(",nc,")"),
                                  type=="numeric"~'float',
                                  type=="integer"~"bigint"),
                coltype=case_when(type=="integer" & tm >= -2^31 & tm <= 2^31-1~"int",
                                  TRUE~coltype),
                coltype=case_when(type=="integer" & tm >= -2^15 & tm <= 2^15-1~"smallint",
                                  TRUE~coltype),
                coltype=case_when(type=="integer" & tm >= 0 & tm <= 255~"tinyint",
                                  TRUE~coltype))

columnTypes <- setNames(as.list(x$coltype),names(dom))

dbExecute(db,"ALTER USER [35866] WITH DEFAULT_SCHEMA = [dbo]")

DBI::dbGetQuery(db,"IF OBJECT_ID('pmad2018.domi2018', 'U') IS NOT NULL DROP TABLE pmad2018.domi2018")

DBI::dbWriteTable(db,"domi2018",dom,field.types = columnTypes)







rm(list = ls())

db <- DBI::dbConnect(odbc(),"db_codeplan", uid="", pwd="")

mor <- data.table::fread('PMAD2018_mor.csv',#colClasses = 'characterer'#
                         encoding = 'Latin-1')

x <- data.frame(type=sapply(mor, class),
                nc=unlist(lapply(mor, function(x) max(nchar(x), na.rm = T))),
                tm=as.numeric(unlist(lapply(mor, function(x) max(x, na.rm = T))))) %>%
  # Ajustar os casos em que todas as colunas são vazias
  dplyr::mutate(nc=ifelse(nc==-Inf,2,nc),
                # Determinar o tamanho dos campos VARCHAR e fazer o de para dos demais campos
                coltype=case_when(type=="character"~paste0("VARCHAR(",nc,")"),
                                  type=="numeric"~'float',
                                  type=="integer"~"bigint"),
                coltype=case_when(type=="integer" & tm >= -2^31 & tm <= 2^31-1~"int",
                                  TRUE~coltype),
                coltype=case_when(type=="integer" & tm >= -2^15 & tm <= 2^15-1~"smallint",
                                  TRUE~coltype),
                coltype=case_when(type=="integer" & tm >= 0 & tm <= 255~"tinyint",
                                  TRUE~coltype))

columnTypes <- setNames(as.list(x$coltype),names(mor))

dbExecute(db,"ALTER USER [35866] WITH DEFAULT_SCHEMA = [pmad2018]")

DBI::dbGetQuery(db,"IF OBJECT_ID('pmad2018.mora2018', 'U') IS NOT NULL DROP TABLE pmad2018.mora2018")

DBI::dbWriteTable(db,"mora2018",mor,field.types = columnTypes)

rm(list = ls())
