use db_codeplan;

/*Passo 01 - Criação de arquivo temporário com adequação da PMAD 2017 à PMAD 2018 DOMICÍLIOS*/

IF OBJECT_ID('pmad2018.tmp', 'U') IS NOT NULL DROP TABLE pmad2018.tmp; 

select
  2017 as referencia,
  d1.FATOR_MUN,
  case 
       when d1.CD_DOM_MUNICIPIO = 41 then 'Águas Lindas de Goiás' 
       when d1.CD_DOM_MUNICIPIO = 42 then 'Alexânia' 
       when d1.CD_DOM_MUNICIPIO = 43 then 'Cidade Ocidental' 
       when d1.CD_DOM_MUNICIPIO = 44 then 'Cristalina' 
       when d1.CD_DOM_MUNICIPIO = 45 then 'Cocalzinho de Goiás' 
       when d1.CD_DOM_MUNICIPIO = 46 then 'Formosa' 
       when d1.CD_DOM_MUNICIPIO = 47 then 'Luziânia' 
       when d1.CD_DOM_MUNICIPIO = 48 then 'Novo Gama' 
       when d1.CD_DOM_MUNICIPIO = 49 then 'Padre Bernardo' 
       when d1.CD_DOM_MUNICIPIO = 50 then 'Planaltina' 
       when d1.CD_DOM_MUNICIPIO = 51 then 'Santo Antônio do Descoberto' 
       when d1.CD_DOM_MUNICIPIO = 52 then 'Valparaíso de Goiás'
       else null
  end as municipio,
  case 
       when d1.DISTRITO = 1 then 'Águas Lindas de Goiás' 
       when d1.DISTRITO = 2 then 'Alexânia' 
       when d1.DISTRITO = 3 then 'Cidade Ocidental: Sede' 
       when d1.DISTRITO = 4 then 'Cidade Ocidental: Jardim ABC' 
       when d1.DISTRITO = 5 then 'Cristalina: Sede' 
       when d1.DISTRITO = 6 then 'Cristalina: Campos Lindos/Marajó' 
       when d1.DISTRITO = 7 then 'Cocalzinho de Goiás: Sede' 
       when d1.DISTRITO = 8 then 'Cocalzinho de Goiás: Girassol/Edilândia' 
       when d1.DISTRITO = 9 then 'Formosa' 
       when d1.DISTRITO = 10 then 'Luziânia: Sede' 
       when d1.DISTRITO = 11 then 'Luziânia: Jardim Ingá' 
       when d1.DISTRITO = 12 then 'Novo Gama' 
       when d1.DISTRITO = 13 then 'Padre Bernardo: Sede' 
       when d1.DISTRITO = 14 then 'Padre Bernardo: Monte Alto' 
       when d1.DISTRITO = 15 then 'Planaltina' 
       when d1.DISTRITO = 16 then 'Santo Antônio do Descoberto' 
       when d1.DISTRITO = 17 then 'Valparaíso de Goiás' 
       else null
  end as A01setor,
  d1.CD_SEQ_DOM as A01nficha_ant,
  cast(d1.SETOR_CENSITÁRIO as bigint) as setorcensitario, 
  d1.QT_DOM_MORADORES as A01npessoas,
  convert(date,CONCAT(
  ltrim(rtrim(cast(day(DT_DOM_ANO) as varchar(2)))),'/', 
  ltrim(rtrim(cast(month(DT_DOM_ANO) as varchar(2)))),'/', 
  ltrim(rtrim(cast(year(DT_DOM_ANO) as varchar(4))))),103) as datavisita,
  d1.TP_DOM_ESPECIE as B01,
  d1.TP_DOM_DOMICILIO as B02,
  d1.TP_DOM_OCUPACAO as B03,
  case when d1.TP_DOM_OCUPACAO <> 2 then 99999 else d1.VL_DOM_PROPRIO_AQUISICAO end as B04,
  case when d1.TP_DOM_OCUPACAO between 6 and 9 then d1.VL_DOM_ALUGUEL else 99999 end as B05,
  d1.TP_DOM_CONDICAO_LEGAL as B06,
  d1.QT_DOM_COMODOS as B07,
  d1.QT_DOM_QUARTOS as B08,
  d1.QT_DOM_BANHEIRO as B09,
  d1.TP_DOM_ABAST_AGUA as B10,
  d1.TP_DOM_CONS_AGUA_POT as B11,
  case when d1.TP_DOM_ECONOMIZAR_AGUA = 8 then 88 else d1.TP_DOM_ECONOMIZAR_AGUA end as B12,
  case when d1.TP_DOM_FALTA_AGUA = 8 then 88 else d1.TP_DOM_FALTA_AGUA end as B13,
  d1.TP_DOM_ABAST_ENERGIA as B14,
  case when d1.TP_DOM_ECONOMIZAR_ENERGIA = 8 then 88 else d1.TP_DOM_ECONOMIZAR_ENERGIA end as B15,
  case when d1.TP_DOM_FALTA_ENERGIA = 8 then 88 else d1.TP_DOM_FALTA_ENERGIA end as B16,
  d1.TP_DOM_ESGOT_SANITARIO as B17,
  d1.TP_DOM_COLETA_LIXO as B18,
  d1.ST_DOM_RUA_ASFALTADA as B191,
  d1.ST_DOM_CALCADA as B192,
  d1.ST_DOM_MEIO_FIO as B193,
  d1.ST_DOM_ILUMINACAO_PUBLICA as B194,
  d1.ST_DOM_REDE_PLUVIAL as B195,
  d1.ST_DOM_EROSAO as B201,
  d1.ST_DOM_DECLIVE as B202,
  d1.ST_DOM_ENTULHO as B203,
  d1.ST_DOM_ESGOTO_ABERTO as B204,
  d1.ST_DOM_AREAS_ALAGADAS as B205,
  d1.ST_DOM_RUAS_EMBURACADAS as B206,
  d1.ST_DOM_RUAS_ARBORIZADAS as B211,
  d1.ST_DOM_RUAS_JARDINS as B212,
  d1.ST_DOM_AREA_PRESERVACAO as B213,
  d1.ST_DOM_NASCENTES as B214,
  d1.ST_DOM_CICLOVIA as B215,
  d1.ST_DOM_ESPACO_CULTURAL as B216,
  d1.ST_DOM_ACADEMIA_COMUNITARIA as B217,
  d1.ST_DOM_PONTO_ONIBUS as B218,
  case when concat(d1.ST_DOM_CONSELHOS,d1.ST_DOM_SINDICATO_ASSOCIACOES,d1.ST_DOM_ORGANIZACAO_NAO_GOV,d1.ST_DOM_COOPERATIVAS,d1.ST_DOM_GREMIO_ESTUDANTIL,d1.ST_DOM_PART_SOCIAL_NÃO_SABE,d1.ST_DOM_MOB_SOCIAL_NAO_PARTICIPA) in ('0000000','0000001') then 0
       when concat(d1.ST_DOM_CONSELHOS,d1.ST_DOM_SINDICATO_ASSOCIACOES,d1.ST_DOM_ORGANIZACAO_NAO_GOV,d1.ST_DOM_COOPERATIVAS,d1.ST_DOM_GREMIO_ESTUDANTIL,d1.ST_DOM_PART_SOCIAL_NÃO_SABE,d1.ST_DOM_MOB_SOCIAL_NAO_PARTICIPA) in ('1000000','1010000','1100000') then 1
       when concat(d1.ST_DOM_CONSELHOS,d1.ST_DOM_SINDICATO_ASSOCIACOES,d1.ST_DOM_ORGANIZACAO_NAO_GOV,d1.ST_DOM_COOPERATIVAS,d1.ST_DOM_GREMIO_ESTUDANTIL,d1.ST_DOM_PART_SOCIAL_NÃO_SABE,d1.ST_DOM_MOB_SOCIAL_NAO_PARTICIPA) in ('0100000','0100001','0110000','0110100') then 2
       when concat(d1.ST_DOM_CONSELHOS,d1.ST_DOM_SINDICATO_ASSOCIACOES,d1.ST_DOM_ORGANIZACAO_NAO_GOV,d1.ST_DOM_COOPERATIVAS,d1.ST_DOM_GREMIO_ESTUDANTIL,d1.ST_DOM_PART_SOCIAL_NÃO_SABE,d1.ST_DOM_MOB_SOCIAL_NAO_PARTICIPA) in ('0001000','0010000') then 3
       when concat(d1.ST_DOM_CONSELHOS,d1.ST_DOM_SINDICATO_ASSOCIACOES,d1.ST_DOM_ORGANIZACAO_NAO_GOV,d1.ST_DOM_COOPERATIVAS,d1.ST_DOM_GREMIO_ESTUDANTIL,d1.ST_DOM_PART_SOCIAL_NÃO_SABE,d1.ST_DOM_MOB_SOCIAL_NAO_PARTICIPA) in ('0000100') then 4
       when concat(d1.ST_DOM_CONSELHOS,d1.ST_DOM_SINDICATO_ASSOCIACOES,d1.ST_DOM_ORGANIZACAO_NAO_GOV,d1.ST_DOM_COOPERATIVAS,d1.ST_DOM_GREMIO_ESTUDANTIL,d1.ST_DOM_PART_SOCIAL_NÃO_SABE,d1.ST_DOM_MOB_SOCIAL_NAO_PARTICIPA) in ('0000010') then 5
       when concat(d1.ST_DOM_CONSELHOS,d1.ST_DOM_SINDICATO_ASSOCIACOES,d1.ST_DOM_ORGANIZACAO_NAO_GOV,d1.ST_DOM_COOPERATIVAS,d1.ST_DOM_GREMIO_ESTUDANTIL,d1.ST_DOM_PART_SOCIAL_NÃO_SABE,d1.ST_DOM_MOB_SOCIAL_NAO_PARTICIPA) in ('0000011','0001001','0010001','0101001','1000001','1100001') then 88
       else null 
  end as B22,
  d1.ST_DOM_ESPACO_ESCOLAR as B231,
  d1.ST_DOM_CAMPANHA_REUNIOES as B232,
  d1.ST_DOM_PROJETO_PEDAGOGICO as B233,
  d1.ST_DOM_DESEMPENHO_ESCOLAS as B234,
  d1.QT_DOM_VEIC_AUTOMOVEL_FAB_1999 as C011,
  d1.QT_DOM_VEIC_AUTOMOVEL_FAB_2000_2009 as C012,
  d1.QT_DOM_VEIC_AUTOMOVEL_FAB_2010 as C013,
  d1.QT_DOM_VEIC_UTILITARIO as C014,
  d1.QT_DOM_VEIC_CARGA as C015,
  d1.QT_DOM_VEIC_MOTOCICLETA as C016,
  d1.QT_DOM_VEIC_BICICLETA as C017,
  d1.QT_DOM_VEIC_CARROCA as C018,
  d1.QT_DOM_VEIC_OUTROS as C019,
  d1.ST_DOM_EMPLACAMENTO_MUNICI as C021,
  d1.ST_DOM_EMPLACAMENTO_DF as C022,
  d1.ST_DOM_EMPLACAMENTO_OUTRO_LOCAL as C023,
  case when d1.QT_DOM_SER_INTERNET = 9 then 0 else d1.QT_DOM_SER_INTERNET end as C031,
  case when d1.QT_DOM_SER_TV_ASSINATURA = 9 then 0 else d1.QT_DOM_SER_TV_ASSINATURA end as C032,
  case when d1.QT_DOM_SER_ASSINATURA_JORNAL = 9 then 0 else d1.QT_DOM_SER_ASSINATURA_JORNAL end as C033,
  case when d1.QT_DOM_SER_ASSINATURA_REVISTA = 9 then 0 else d1.QT_DOM_SER_ASSINATURA_REVISTA end as C034,
  case when d1.QT_DOM_EQ_AQUECEDOR_SOLAR = 9 then 77777 else d1.QT_DOM_EQ_AQUECEDOR_SOLAR end as C0401,
  case when d1.QT_DOM_EQ_ARCONDICIONADO = 9 then 77777 else d1.QT_DOM_EQ_ARCONDICIONADO end as C0402,
  case when d1.QT_DOM_EQ_CIRCU_VENTILADOR = 9 then 77777 else d1.QT_DOM_EQ_CIRCU_VENTILADOR end as C0403,
  case when d1.QT_DOM_EQ_FOGAO = 9 then 77777 else d1.QT_DOM_EQ_FOGAO end as C0404,
  case when d1.QT_DOM_EQ_FORNO_MICROONDAS = 9 then 77777 else d1.QT_DOM_EQ_FORNO_MICROONDAS end as C0405,
  case when d1.QT_DOM_EQ_FORNO_ELETRICO = 9 then 77777 else d1.QT_DOM_EQ_FORNO_ELETRICO end as C0406,
  case when d1.QT_DOM_EQ_FREEZER = 9 then 77777 else d1.QT_DOM_EQ_FREEZER end as C0407,
  case when d1.QT_DOM_EQ_GELADEIRA = 9 then 77777 else d1.QT_DOM_EQ_GELADEIRA end as C0408,
  case when d1.QT_DOM_EQ_IPOD_SIMILARES = 9 then 77777 else d1.QT_DOM_EQ_IPOD_SIMILARES end as C0409,
  case when d1.QT_DOM_EQ_MAQ_LAVA_ROUPA = 9 then 77777 else d1.QT_DOM_EQ_MAQ_LAVA_ROUPA end as C0410,
  case when d1.QT_DOM_EQ_MAQ_LAVA_LOUCA = 9 then 77777 else d1.QT_DOM_EQ_MAQ_LAVA_LOUCA end as C0411,
  case when d1.QT_DOM_EQ_MAQ_FOTO_DIGITAL = 9 then 77777 else d1.QT_DOM_EQ_MAQ_FOTO_DIGITAL end as C0412,
  case when d1.QT_DOM_EQ_MICROCOMPUTADO = 9 then 77777 else d1.QT_DOM_EQ_MICROCOMPUTADO end as C0413,
  case when d1.QT_DOM_EQ_NOTEBOOK = 9 then 77777 else d1.QT_DOM_EQ_NOTEBOOK end as C0414,
  case when d1.QT_DOM_EQ_TABLET_IPAD = 9 then 77777 else d1.QT_DOM_EQ_TABLET_IPAD end as C0415,
  case when d1.QT_DOM_EQ_TANQ_ELETRICO = 9 then 77777 else d1.QT_DOM_EQ_TANQ_ELETRICO end as C0416,
  case when d1.QT_DOM_EQ_TEL_FIXO = 9 then 77777 else d1.QT_DOM_EQ_TEL_FIXO end as C0417,
  case when d1.QT_DOM_EQ_CEL_PRE = 9 then 77777 else d1.QT_DOM_EQ_CEL_PRE end as C0418,
  case when d1.QT_DOM_EQ_CEL_POS = 9 then 77777 else d1.QT_DOM_EQ_CEL_POS end as C0419,
  case when d1.QT_DOM_EQ_TV_TRADICIONAL = 9 then 77777 else d1.QT_DOM_EQ_TV_TRADICIONAL end as C0420,
  case when d1.QT_DOM_EQ_TV_PLANA = 9 then 77777 else d1.QT_DOM_EQ_TV_PLANA end as C0421,
  case when d1.QT_DOM_EQ_UMIDIFICADOR = 9 then 77777 else d1.QT_DOM_EQ_UMIDIFICADOR end as C0422,
  case when d1.QT_DOM_EMP_MENS_MORA = 9 then 0 else d1.QT_DOM_EMP_MENS_MORA end as C051,
  case when d1.QT_DOM_EMP_MENS_NAO_MORA = 9 then 0 else d1.QT_DOM_EMP_MENS_NAO_MORA end as C052,
  case when d1.QT_DOM_EMP_DIARISTA = 9 then 0 else d1.QT_DOM_EMP_DIARISTA end as C053,
  d1.ST_DOM_COM_ALIMENTACAO as C061,
  d1.ST_DOM_COM_ROUPAS_CALCADOS as C062,
  d1.ST_DOM_COM_ELETRODOMESTICOS as C063,
  d1.ST_DOM_COM_SER_PESSOAIS as C064,
  d1.ST_DOM_COM_SER_GERAL as C065,
  d1.ST_DOM_COM_CULTURA_LAZER as C066,
  case when d1.ST_DOM_EXISTEN_BANCO = 0 then 1
       when d1.ST_DOM_EXISTEN_BANCO = 1 then 2
       when d1.ST_DOM_EXISTEN_BANCO = 2 then 3
       when d1.ST_DOM_EXISTEN_BANCO = 8 then 88
  end as C07,
  case when d1.ST_DOM_SERV_BANCARIOS = 8 then 88
       else d1.ST_DOM_SERV_BANCARIOS
  end as C08,
  case when d1.ST_DOM_SERV_BANCARIOS = 4 then 99
       when d1.ST_DOM_SERV_BANCARIOS = 8 then 88
       else d1.ST_DOM_SERV_IMPORT_BANCO
  end as C09,
  case when d1.ST_DOM_SERV_BANCARIOS = 4 then 99
       when d1.ST_DOM_SERV_BANCARIOS = 8 then 88
       when d1.ST_DOM_RECODAR_BANCO1 = 9 then 88
       else d1.ST_DOM_RECODAR_BANCO1
  end as C101,
  case when d1.ST_DOM_SERV_BANCARIOS = 4 then 99
       when d1.ST_DOM_SERV_BANCARIOS = 8 then 88
       when d1.ST_DOM_RECODAR_BANCO1 = 9 then 88
       when d1.ST_DOM_RECODAR_BANCO2 = 9 then 88
       else d1.ST_DOM_RECODAR_BANCO2
  end as C102,
  case when d1.ST_DOM_SERV_BANCARIOS = 4 then 99
       when d1.ST_DOM_SERV_BANCARIOS = 8 then 88
       when d1.ST_DOM_RECODAR_BANCO1 = 9 then 88
       when d1.ST_DOM_RECODAR_BANCO2 = 9 then 88
       when d1.ST_DOM_RECODAR_BANCO3 = 9 then 88
       else d1.ST_DOM_RECODAR_BANCO3
  end as C103,
  case when d1.ST_DOM_SERV_BANCARIOS = 4 then 99
       when d1.ST_DOM_SERV_BANCARIOS = 8 then 88
       when d1.ST_DOM_RECODAR_BANCO1 = 9 then 88
       when d1.ST_DOM_RECODAR_BANCO2 = 9 then 88
       when d1.ST_DOM_RECODAR_BANCO3 = 9 then 88
       when d1.ST_DOM_RECODAR_BANCO4 = 9 then 88
       else d1.ST_DOM_RECODAR_BANCO4
  end as C104
into pmad2018.tmp
from pmad2018.dom2017 d1;

/*Passo 02 - Inserção dos dados da PMAD 2018 no arquivo temporário criado para a adequação da PMAD 2017 à PMAD 2018 DOMICÍLIOS*/
insert into pmad2018.tmp
select 
 cast(SUBSTRING(datavisita,1,4) as int) as referencia, 
 FATOR_MUN, 
 case when ltrim(rtrim(municipio)) = 'Planaltina' then  cast('Planaltina' as varchar(27))
      when ltrim(rtrim(municipio)) = 'Aguas Lindas de Goias' then cast('Águas Lindas de Goiás' as varchar(27))
      when ltrim(rtrim(municipio)) = 'Valparaiso de Goias' then cast('Valparaíso de Goiás' as varchar(27))
      when ltrim(rtrim(municipio)) = 'Padre Bernardo' then cast('Padre Bernardo' as varchar(27))
      when ltrim(rtrim(municipio)) = 'Cocalzinho de Goias' then cast('Cocalzinho de Goiás' as varchar(27))
      else null 
 end as municipio, 
 cast(A01setor as varchar(39)) as A01setor, 
 A01nficha as A01nficha_ant, 
 cast(setorcensitario as bigint) as setorcensitario, 
 A01nPessoas as A01npessoas, 
 CONVERT(date,CONCAT(SUBSTRING(datavisita,9,2),'/',
                     SUBSTRING(datavisita,6,2),'/',
                     SUBSTRING(datavisita,1,4)),103) as datavisita, 
 B01, B02, B03, B04, B05, B06, B07, B08, B09, B10, B11, B12, B13, B14, B15, B16, B17, B18, B191, B192, B193, 
 B194, B195, B201, B202, B203, B204, B205, B206, B211, B212, B213, B214, B215, B216, B217, B218, B22, B231, 
 B232, B233, B234, C011, C012, C013, C014, C015, C016, C017, C018, C019, C021, C022, C023, C031, C032, C033, 
 C034, C0401, C0402, C0403, C0404, C0405, C0406, C0407, C0408, C0409, C0410, C0411, C0412, C0413, C0414, C0415,  
 C0416, C0417, C0418, C0419, C0420, C0421, C0422, C051, C052, C053, C061, C062, C063, C064, C065, C066, C07, 
 C08, C09, C101, C102, C103, C104 
from pmad2018.dom2018;

/*Se o domicílio possuir qualquer item que não seja fogão e/ou geladeira, ele recebe 1 fogão e 1 geladeira*/
update pmad2018.tmp set C0404=1 where C0401+C0402+C0403+C0405+C0406+C0407+C0408+C0409+C0410+C0411+C0412+C0413+C0414+C0415+C0416+C0417+C0418+C0419+C0420+C0421+C0422+C051+C052+C053+C031+C032+C033+C034+C011+C012+C013+C014+C015+C016+C017+C018+C019 between 1 and 77776 and C0404 = 0;

update pmad2018.tmp set C0408=1 where C0401+C0402+C0403+C0404+C0405+C0406+C0407+C0409+C0410+C0411+C0412+C0413+C0414+C0415+C0416+C0417+C0418+C0419+C0420+C0421+C0422+C051+C052+C053+C031+C032+C033+C034+C011+C012+C013+C014+C015+C016+C017+C018+C019 between 1 and 77776 and C0408 = 0 


/*Passo 03 - Criação da tabela final de DOMICÍLIOS*/

IF OBJECT_ID('pmad2018.dp_dom_1718', 'U') IS NOT NULL DROP TABLE pmad2018.dp_dom_1718; 

select
year(datavisita) as referencia, FATOR_MUN, municipio, A01setor, A01nficha_ant, ROW_NUMBER() OVER(ORDER BY municipio, A01setor, A01nficha_ant) AS A01nficha, 
setorcensitario, A01npessoas, datavisita, B01, B02, B03, B04, B05, B06, B07, B08, B09, B10, B11, B12, B13, B14, B15, B16, B17, B18, 
B191, B192, B193, B194, B195, B201, B202, B203, B204, B205, B206, B211, B212, B213, B214, B215, B216, B217, B218, B22, B231, B232, 
B233, B234, C011, C012, C013, C014, C015, C016, C017, C018, C019, C021, C022, C023, C031, C032, C033, C034, C0401, C0402, C0403, 
C0404, C0405, C0406, C0407, C0408, C0409, C0410, C0411, C0412, C0413, C0414, C0415, C0416, C0417, C0418, C0419, C0420, C0421, C0422, 
C051, C052, C053, C061, C062, C063, C064, C065, C066, C07, C08, C09, C101, C102, C103, C104
into pmad2018.dp_dom_1718
from pmad2018.tmp;

/*Passo 04 - Criação de arquivo temporário com adequação da PMAD 2017 à PMAD 2018 MORADORES*/

IF OBJECT_ID('pmad2018.tmp', 'U') IS NOT NULL DROP TABLE pmad2018.tmp; 

select
  2017 as referencia, 
  case 
       when m1.CD_DOM_MUNICIPIO = 41 then 'Águas Lindas de Goiás' 
       when m1.CD_DOM_MUNICIPIO = 42 then 'Alexânia' 
       when m1.CD_DOM_MUNICIPIO = 43 then 'Cidade Ocidental' 
       when m1.CD_DOM_MUNICIPIO = 44 then 'Cristalina' 
       when m1.CD_DOM_MUNICIPIO = 45 then 'Cocalzinho de Goiás' 
       when m1.CD_DOM_MUNICIPIO = 46 then 'Formosa' 
       when m1.CD_DOM_MUNICIPIO = 47 then 'Luziânia' 
       when m1.CD_DOM_MUNICIPIO = 48 then 'Novo Gama' 
       when m1.CD_DOM_MUNICIPIO = 49 then 'Padre Bernardo' 
       when m1.CD_DOM_MUNICIPIO = 50 then 'Planaltina' 
       when m1.CD_DOM_MUNICIPIO = 51 then 'Santo Antônio do Descoberto' 
       when m1.CD_DOM_MUNICIPIO = 52 then 'Valparaíso de Goiás'
       else null
  end as municipio,
  case 
       when m1.DISTRITO = 1 then 'Águas Lindas de Goiás' 
       when m1.DISTRITO = 2 then 'Alexânia' 
       when m1.DISTRITO = 3 then 'Cidade Ocidental: Sede' 
       when m1.DISTRITO = 4 then 'Cidade Ocidental: Jardim ABC' 
       when m1.DISTRITO = 5 then 'Cristalina: Sede' 
       when m1.DISTRITO = 6 then 'Cristalina: Campos Lindos/Marajó' 
       when m1.DISTRITO = 7 then 'Cocalzinho de Goiás: Sede' 
       when m1.DISTRITO = 8 then 'Cocalzinho de Goiás: Girassol/Edilândia' 
       when m1.DISTRITO = 9 then 'Formosa' 
       when m1.DISTRITO = 10 then 'Luziânia: Sede' 
       when m1.DISTRITO = 11 then 'Luziânia: Jardim Ingá' 
       when m1.DISTRITO = 12 then 'Novo Gama' 
       when m1.DISTRITO = 13 then 'Padre Bernardo: Sede' 
       when m1.DISTRITO = 14 then 'Padre Bernardo: Monte Alto' 
       when m1.DISTRITO = 15 then 'Planaltina' 
       when m1.DISTRITO = 16 then 'Santo Antônio do Descoberto' 
       when m1.DISTRITO = 17 then 'Valparaíso de Goiás' 
       else null
  end as A01setor,
  m1.CD_SEQ_DOM as A01nficha_ant,
  m1.QT_DOM_MORADORES as A01npessoas,
  m1.TP_MOR_COND_UNID as D02,
  case when m1.TP_MOR_RESPON_COMPARTILHADA = 9 then 99 else m1.TP_MOR_RESPON_COMPARTILHADA end as D06,
  m1.TP_MOR_SEXO as D03,
  m1.TP_MOR_COR_RACA as D04,
  m1.QT_MOR_IDADE as D05,
  case when m1.TP_MOR_ESTADO_CIVIL = 9 then 99 else m1.TP_MOR_ESTADO_CIVIL end as D07,
  m1.TP_MOR_RELIGIAO as D08,
  case when m1.TP_MOR_RELIGIAO = 8 then 99 
       when m1.TP_MOR_FREQ_RELIGIAO = 8 then 88
       else m1.TP_MOR_FREQ_RELIGIAO 
  end as D09,
  m1.TP_MOR_NATURALIDADE as D10,
  case when m1.TP_MOR_NASCIDO_DF = 8 then 88 
       when m1.TP_MOR_NASCIDO_DF = 9 then 99
       else m1.TP_MOR_NASCIDO_DF 
  end as D11,
  m1.DT_MOR_ANO_CHEGADA as D12,
  m1.TP_MOR_ORIGEM as D13,
  m1.RZ_MOR_PQ_VEIO as D14,
  case when m1.QT_MOR_TEMPO_MUNICIPIO = 88 then 888
       when m1.QT_MOR_TEMPO_MUNICIPIO = 99 then 999
       else m1.QT_MOR_TEMPO_MUNICIPIO 
  end as D15,
  CASE WHEN m1.TP_MOR_ACESSO_INT = 8 THEN 88 ELSE m1.TP_MOR_ACESSO_INT end as D16,
  CASE WHEN m1.TP_MOR_PLANO_SAUDE = 8 THEN 88 ELSE m1.TP_MOR_PLANO_SAUDE END as D17,
  m1.ST_MOR_HOSPITAL as D18,
  m1.ST_MOR_POSTO_SAUDE as D19,
  m1.TP_MOR_VIOLENCIA as D20,
  case when m1.TP_MOR_VIOLENCIA in (0,99) then 99
       when m1.TP_MOR_VIOLENCIA = 88 then 88
       when m1.LC_MOR_VIOLENCIA = 8 then 88
       when m1.LC_MOR_VIOLENCIA = 9 then 99
       else m1.LC_MOR_VIOLENCIA
  end as D21,
  case when m1.TP_MOR_VIOLENCIA in (0,99) then 99
       when m1.TP_MOR_VIOLENCIA = 88 then 88
       when m1.LC_MOR_VIOLENCIA = 8 then 88
       when m1.LC_MOR_VIOLENCIA = 9 then 99
       when m1.TP_MOR_REGISTROU_QUEIXA in (6,8) then 88
       when m1.TP_MOR_REGISTROU_QUEIXA in (0,9) then 99
       else m1.TP_MOR_REGISTROU_QUEIXA
  end as D22,
  CASE WHEN m1.FQ_MOR_ESCOLA = 8 THEN 88 ELSE m1.FQ_MOR_ESCOLA END as E01,
  case when m1.LC_MOR_ESTUDA = 0 then 99 else m1.LC_MOR_ESTUDA end as E02,
  m1.TP_MOR_NIVEL_ESCOLARIDADE as E03,
  case when m1.TP_MOR_SERIE_CONCLUIDA = 0 then 99 else m1.TP_MOR_SERIE_CONCLUIDA end as E04,
  m1.TP_MOR_OUTROS_CURSOS as E05,
  case when m1.ST_MOR_SITUACAO_ATIVIDADE = 9 then 99 
       else m1.ST_MOR_SITUACAO_ATIVIDADE 
  end as E06,
  case when m1.ST_MOR_ATV_REMUNERADA = 0 then 99 else m1.ST_MOR_ATV_REMUNERADA end as E07,
  case when m1.TP_MOR_OCUPACAO = 0 then 99 else m1.TP_MOR_OCUPACAO end as E08,
  case when m1.LC_MOR_TRABALHA = 0 then 99 else m1.LC_MOR_TRABALHA end as E09,
  case when m1.TP_MOR_TEMPO_GASTO in (0,9) then 99 
       when m1.TP_MOR_TEMPO_GASTO = 8 then 88
       else m1.TP_MOR_TEMPO_GASTO 
  end as E10,
  case when m1.TP_MOR_MODO_TRANSPORTE = 0 then 99 else m1.TP_MOR_MODO_TRANSPORTE end as E11,
  m1.VL_MOR_RENDIMENTOS_BRUTOS as E12,
  m1.VL_MOR_OUTROS_RENDIMENTOS as E13,
  case when m1.TP_MOR_PREVIDENCIA = 9 then 99
       when m1.TP_MOR_PREVIDENCIA = 8 then 88
       else m1.TP_MOR_PREVIDENCIA
  end as E14,
  m1.LC_MOR_SER_BANCARIOS as E15
into pmad2018.tmp
from pmad2018.mora2017 m1;

/*Passo 05 - Inserção dos dados da PMAD 2018 no arquivo temporário criado para a adequação da PMAD 2017 à PMAD 2018 MORADORES*/
insert into pmad2018.tmp
select 
  2018 as referencia, 
  case when ltrim(rtrim(municipio)) = 'Planaltina' then  cast('Planaltina' as varchar(27))
       when ltrim(rtrim(municipio)) = 'Aguas Lindas de Goias' then cast('Águas Lindas de Goiás' as varchar(27))
       when ltrim(rtrim(municipio)) = 'Valparaiso de Goias' then cast('Valparaíso de Goiás' as varchar(27))
       when ltrim(rtrim(municipio)) = 'Padre Bernardo' then cast('Padre Bernardo' as varchar(27))
       when ltrim(rtrim(municipio)) = 'Cocalzinho de Goias' then cast('Cocalzinho de Goiás' as varchar(27))
       else null 
  end as municipio, 
  A01setor, A01nficha as A01nficha_ant, A01npessoas, D02, D06, D03, D04, D05, D07, D08, D09, D10, D11, D12, D13, D14, D15, D16, 
  D17, D18, D19, D20, D21, D22, 
  case when E01 = 8 then 88 else E01 end as E01, E02, E03, E04, E05, E06, E07, E08, E09, E10, E11, E12, E13, E14, E15
from pmad2018.mora2018;


/*Passo 06 - Criação de uma tabela intermediária de MORADORES para correção de idade e posição na ocupação*/
/*Aqui foi implementado a contagem correta do número de pessoas*/

IF OBJECT_ID('pmad2018.tmp2', 'U') IS NOT NULL DROP TABLE pmad2018.tmp2; 

select
year(t2.datavisita) as referencia, t1.municipio, t1.A01setor, t1.A01nficha_ant, t2.A01nficha, t1.A01npessoas, 
ROW_NUMBER() OVER(ORDER BY t1.municipio, t1.A01setor, t2.A01nficha, t1.D05) AS D01,
t1.D02, t1.D06, t1.D03, t1.D04, t1.D05, t1.D07, t1.D08, t1.D09, t1.D10, t1.D11, 
t1.D12, t1.D13, 
t1.D14, t1.D15, t1.D16, t1.D17, t1.D18, t1.D19, t1.D20, t1.D21, t1.D22, 
t1.E01, t1.E02, t1.E03, t1.E04, t1.E05, t1.E06, t1.E07, t1.E08, t1.E09, 
t1.E10, t1.E11, t1.E12, t1.E13, t1.E14, t1.E15
into pmad2018.tmp2
from pmad2018.tmp t1,
     pmad2018.dp_dom_1718 t2
where t1.municipio = t2.municipio
and t1.A01setor = t2.A01setor
and t1.A01nficha_ant = t2.A01nficha_ant;

 /*Alteração de idades com problemas*/
update pmad2018.tmp2 set D05 = 77 where A01nficha = 1035 and D01 = 3391;

update pmad2018.tmp2 set D05 = 31 where A01nficha = 1136 and D01 = 3711;

update pmad2018.tmp2 set D05 = 39 where A01nficha = 1157 and D01 = 3779;

update pmad2018.tmp2 set D05 = 48 where A01nficha = 1167 and D01 = 3811;

update pmad2018.tmp2 set D05 = 47 where A01nficha = 1226 and D01 = 3997;

update pmad2018.tmp2 set D05 = 24 where A01nficha = 1280 and D01 = 4183;

update pmad2018.tmp2 set D05 = 21 where A01nficha = 1347 and D01 = 4397;

update pmad2018.tmp2 set D05 = 9 where A01nficha = 1400 and D01 = 4529;

update pmad2018.tmp2 set D05 = 30 where A01nficha = 1489 and D01 = 4834;

update pmad2018.tmp2 set D05 = 46 where A01nficha = 1493 and D01 = 4851;

update pmad2018.tmp2 set D05 = 85 where A01nficha = 1530 and D01 = 4984;

update pmad2018.tmp2 set D05 = 35 where A01nficha = 1547 and D01 = 5032;

update pmad2018.tmp2 set D05 = 37 where A01nficha = 1561 and D01 = 5074;

update pmad2018.tmp2 set D05 = 44 where A01nficha = 1590 and D01 = 5177;

update pmad2018.tmp2 set D05 = 46 where A01nficha = 1637 and D01 = 5313;

update pmad2018.tmp2 set D05 = 9 where A01nficha = 1725 and D01 = 5626;

update pmad2018.tmp2 set D05 = 32 where A01nficha = 1795 and D01 = 5850;

update pmad2018.tmp2 set D05 = 51 where A01nficha = 1847 and D01 = 6041;

update pmad2018.tmp2 set D05 = 31 where A01nficha = 1862 and D01 = 6093;

update pmad2018.tmp2 set D05 = 48 where A01nficha = 1890 and D01 = 6203;

update pmad2018.tmp2 set D05 = 30 where A01nficha = 2124 and D01 = 7066;

update pmad2018.tmp2 set D05 = 25 where A01nficha = 2184 and D01 = 7261;

update pmad2018.tmp2 set D05 = 9 where A01nficha = 3710 and D01 = 12019;

update pmad2018.tmp2 set D05 = 9 where A01nficha = 3761 and D01 = 12181;

update pmad2018.tmp2 set D05 = 69 where A01nficha = 3767 and D01 = 12207;

update pmad2018.tmp2 set D05 = 10 where A01nficha = 3858 and D01 = 12509;

update pmad2018.tmp2 set D05 = 30 where A01nficha = 3874 and D01 = 12558;

update pmad2018.tmp2 set D05 = 66 where A01nficha = 3884 and D01 = 12591;

update pmad2018.tmp2 set D05 = 40 where A01nficha = 3963 and D01 = 12869;

update pmad2018.tmp2 set D05 = 50 where A01nficha = 4035 and D01 = 13096;

update pmad2018.tmp2 set D05 = 74 where A01nficha = 4155 and D01 = 13507;

update pmad2018.tmp2 set D05 = 38 where A01nficha = 4271 and D01 = 13886;

update pmad2018.tmp2 set D05 = 23 where A01nficha = 4489 and D01 = 14613;

update pmad2018.tmp2 set D05 = 40 where A01nficha = 4518 and D01 = 14713;

update pmad2018.tmp2 set D05 = 46 where A01nficha = 4613 and D01 = 15072;

update pmad2018.tmp2 set D05 = 8 where A01nficha = 4888 and D01 = 15936;

update pmad2018.tmp2 set D05 = 31 where A01nficha = 4980 and D01 = 16236;

update pmad2018.tmp2 set D05 = 41 where A01nficha = 5221 and D01 = 17039;

update pmad2018.tmp2 set D05 = 62 where A01nficha = 5233 and D01 = 17077;

update pmad2018.tmp2 set D05 = 53 where A01nficha = 5379 and D01 = 17563;

update pmad2018.tmp2 set D05 = 66 where A01nficha = 5506 and D01 = 17913;

update pmad2018.tmp2 set D05 = 63 where A01nficha = 5508 and D01 = 17919;

update pmad2018.tmp2 set D05 = 52 where A01nficha = 5675 and D01 = 18508;

update pmad2018.tmp2 set D05 = 36 where A01nficha = 5694 and D01 = 18558;

update pmad2018.tmp2 set D05 = 41 where A01nficha = 5737 and D01 = 18686;

update pmad2018.tmp2 set D05 = 72 where A01nficha = 6135 and D01 = 19979;

update pmad2018.tmp2 set D05 = 38 where A01nficha = 6148 and D01 = 20018;

update pmad2018.tmp2 set D05 = 58 where A01nficha = 6242 and D01 = 20268;

update pmad2018.tmp2 set D05 = 43 where A01nficha = 6281 and D01 = 20392;

update pmad2018.tmp2 set D05 = 44 where A01nficha = 6523 and D01 = 21074;

update pmad2018.tmp2 set D05 = 28 where A01nficha = 6570 and D01 = 21287;

update pmad2018.tmp2 set D05 = 32 where A01nficha = 6602 and D01 = 21455;

update pmad2018.tmp2 set D05 = 38 where A01nficha = 6758 and D01 = 21988;

update pmad2018.tmp2 set D05 = 41 where A01nficha = 6821 and D01 = 22191;

update pmad2018.tmp2 set D05 = 9 where A01nficha = 6901 and D01 = 22431;

update pmad2018.tmp2 set D05 = 28 where A01nficha = 7070 and D01 = 22948;

update pmad2018.tmp2 set D05 = 8 where A01nficha = 7243 and D01 = 23530;

update pmad2018.tmp2 set D05 = 9 where A01nficha = 7278 and D01 = 23646;

update pmad2018.tmp2 set D05 = 8 where A01nficha = 7297 and D01 = 23704;

update pmad2018.tmp2 set D05 = 34 where A01nficha = 7354 and D01 = 23881;

update pmad2018.tmp2 set D05 = 8 where A01nficha = 7369 and D01 = 23924;

update pmad2018.tmp2 set D05 = 22 where A01nficha = 7403 and D01 = 24043;

update pmad2018.tmp2 set D05 = 53 where A01nficha = 7514 and D01 = 24421;

update pmad2018.tmp2 set D05 = 33 where A01nficha = 7569 and D01 = 24615;

update pmad2018.tmp2 set D05 = 19 where A01nficha = 7584 and D01 = 24677;

update pmad2018.tmp2 set D05 = 51 where A01nficha = 7600 and D01 = 24717;

update pmad2018.tmp2 set D05 = 36 where A01nficha = 9426 and D01 = 30501;

update pmad2018.tmp2 set D05 = 64 where A01nficha = 9498 and D01 = 30741;

update pmad2018.tmp2 set D05 = 35 where A01nficha = 9613 and D01 = 31073;

update pmad2018.tmp2 set D05 = 35 where A01nficha = 9724 and D01 = 31430;

update pmad2018.tmp2 set D05 = 27 where A01nficha = 9741 and D01 = 31487;

update pmad2018.tmp2 set D05 = 35 where A01nficha = 9781 and D01 = 31630;

update pmad2018.tmp2 set D05 = 9 where A01nficha = 9788 and D01 = 31651;

update pmad2018.tmp2 set D05 = 53 where A01nficha = 9834 and D01 = 31770;

update pmad2018.tmp2 set D05 = 26 where A01nficha = 9860 and D01 = 31833;

update pmad2018.tmp2 set D05 = 51 where A01nficha = 9899 and D01 = 31969;

update pmad2018.tmp2 set D05 = 34 where A01nficha = 9931 and D01 = 32070;

update pmad2018.tmp2 set D05 = 49 where A01nficha = 9977 and D01 = 32252;

update pmad2018.tmp2 set D05 = 73 where A01nficha = 9979 and D01 = 32254;

update pmad2018.tmp2 set D05 = 30 where A01nficha = 1282 and D01 = 4191;

update pmad2018.tmp2 set D05 = 29 where A01nficha = 1282 and D01 = 4192;

update pmad2018.tmp2 set D05 = 42 where A01nficha = 1467 and D01 = 4755;

update pmad2018.tmp2 set D05 = 40 where A01nficha = 1467 and D01 = 4756;

update pmad2018.tmp2 set D05 = 38 where A01nficha = 1467 and D01 = 4757;

update pmad2018.tmp2 set D05 = 44 where A01nficha = 1491 and D01 = 4840;

update pmad2018.tmp2 set D05 = 45 where A01nficha = 1491 and D01 = 4841;

update pmad2018.tmp2 set D05 = 36 where A01nficha = 1648 and D01 = 5353;

update pmad2018.tmp2 set D05 = 37 where A01nficha = 1648 and D01 = 5354;

update pmad2018.tmp2 set D05 = 25 where A01nficha = 1951 and D01 = 6462;

update pmad2018.tmp2 set D05 = 24 where A01nficha = 1951 and D01 = 6463;

update pmad2018.tmp2 set D05 = 23 where A01nficha = 1951 and D01 = 6464;

update pmad2018.tmp2 set D05 = 37 where A01nficha = 1955 and D01 = 6481;

update pmad2018.tmp2 set D05 = 36 where A01nficha = 1955 and D01 = 6482;

update pmad2018.tmp2 set D05 = 42 where A01nficha = 2031 and D01 = 6745;

update pmad2018.tmp2 set D05 = 46 where A01nficha = 2031 and D01 = 6746;

update pmad2018.tmp2 set D05 = 40 where A01nficha = 2031 and D01 = 6747;

update pmad2018.tmp2 set D05 = 9 where A01nficha = 2063 and D01 = 6864;

update pmad2018.tmp2 set D05 = 24 where A01nficha = 2063 and D01 = 6865;

update pmad2018.tmp2 set D05 = 22 where A01nficha = 2213 and D01 = 7375;

update pmad2018.tmp2 set D05 = 8 where A01nficha = 2213 and D01 = 7376;

update pmad2018.tmp2 set D05 = 55 where A01nficha = 2256 and D01 = 7545;

update pmad2018.tmp2 set D05 = 53 where A01nficha = 2256 and D01 = 7546;

update pmad2018.tmp2 set D05 = 30 where A01nficha = 2552 and D01 = 8497;

update pmad2018.tmp2 set D05 = 26 where A01nficha = 2552 and D01 = 8498;

update pmad2018.tmp2 set D05 = 24 where A01nficha = 2552 and D01 = 8499;

update pmad2018.tmp2 set D05 = 42 where A01nficha = 3869 and D01 = 12540;

update pmad2018.tmp2 set D05 = 43 where A01nficha = 3869 and D01 = 12541;

update pmad2018.tmp2 set D05 = 58 where A01nficha = 4345 and D01 = 14134;

update pmad2018.tmp2 set D05 = 32 where A01nficha = 4345 and D01 = 14135;

update pmad2018.tmp2 set D05 = 39 where A01nficha = 4345 and D01 = 14136;

update pmad2018.tmp2 set D05 = 42 where A01nficha = 4345 and D01 = 14137;

update pmad2018.tmp2 set D05 = 24 where A01nficha = 4623 and D01 = 15104;

update pmad2018.tmp2 set D05 = 26 where A01nficha = 4623 and D01 = 15105;

update pmad2018.tmp2 set D05 = 40 where A01nficha = 4934 and D01 = 16081;

update pmad2018.tmp2 set D05 = 39 where A01nficha = 4934 and D01 = 16082;

update pmad2018.tmp2 set D05 = 3 where A01nficha = 4934 and D01 = 16083;

update pmad2018.tmp2 set D05 = 17 where A01nficha = 4934 and D01 = 16084;

update pmad2018.tmp2 set D05 = 44 where A01nficha = 4984 and D01 = 16245;

update pmad2018.tmp2 set D05 = 40 where A01nficha = 4984 and D01 = 16246;

update pmad2018.tmp2 set D05 = 32 where A01nficha = 5202 and D01 = 16971;

update pmad2018.tmp2 set D05 = 26 where A01nficha = 5202 and D01 = 16972;

update pmad2018.tmp2 set D05 = 39 where A01nficha = 5352 and D01 = 17461;

update pmad2018.tmp2 set D05 = 40 where A01nficha = 5352 and D01 = 17462;

update pmad2018.tmp2 set D05 = 33 where A01nficha = 5381 and D01 = 17568;

update pmad2018.tmp2 set D05 = 31 where A01nficha = 5381 and D01 = 17569;

update pmad2018.tmp2 set D05 = 29 where A01nficha = 5381 and D01 = 17570;

update pmad2018.tmp2 set D05 = 27 where A01nficha = 5381 and D01 = 17571;

update pmad2018.tmp2 set D05 = 35 where A01nficha = 5381 and D01 = 17572;

update pmad2018.tmp2 set D05 = 37 where A01nficha = 5381 and D01 = 17573;

update pmad2018.tmp2 set D05 = 39 where A01nficha = 5381 and D01 = 17574;

update pmad2018.tmp2 set D05 = 36 where A01nficha = 5604 and D01 = 18278;

update pmad2018.tmp2 set D05 = 1 where A01nficha = 5604 and D01 = 18279;

update pmad2018.tmp2 set D05 = 17 where A01nficha = 5604 and D01 = 18280;

update pmad2018.tmp2 set D05 = 4 where A01nficha = 5604 and D01 = 18281;

update pmad2018.tmp2 set D05 = 45 where A01nficha = 5804 and D01 = 18924;

update pmad2018.tmp2 set D05 = 44 where A01nficha = 5804 and D01 = 18925;

update pmad2018.tmp2 set D05 = 27 where A01nficha = 5814 and D01 = 18954;

update pmad2018.tmp2 set D05 = 23 where A01nficha = 5814 and D01 = 18955;

update pmad2018.tmp2 set D05 = 15 where A01nficha = 5814 and D01 = 18956;

update pmad2018.tmp2 set D05 = 28 where A01nficha = 5815 and D01 = 18959;

update pmad2018.tmp2 set D05 = 26 where A01nficha = 5815 and D01 = 18960;

update pmad2018.tmp2 set D05 = 24 where A01nficha = 5815 and D01 = 18961;

update pmad2018.tmp2 set D05 = 60 where A01nficha = 6332 and D01 = 20518;

update pmad2018.tmp2 set D05 = 59 where A01nficha = 6332 and D01 = 20519;

update pmad2018.tmp2 set D05 = 39 where A01nficha = 6387 and D01 = 20659;

update pmad2018.tmp2 set D05 = 40 where A01nficha = 6387 and D01 = 20660;

update pmad2018.tmp2 set D05 = 28 where A01nficha = 6808 and D01 = 22145;

update pmad2018.tmp2 set D05 = 27 where A01nficha = 6808 and D01 = 22146;

update pmad2018.tmp2 set D05 = 7 where A01nficha = 6808 and D01 = 22147;

update pmad2018.tmp2 set D05 = 6 where A01nficha = 6808 and D01 = 22148;

update pmad2018.tmp2 set D05 = 56 where A01nficha = 6823 and D01 = 22196;

update pmad2018.tmp2 set D05 = 68 where A01nficha = 6823 and D01 = 22197;

update pmad2018.tmp2 set D05 = 9 where A01nficha = 6886 and D01 = 22384;

update pmad2018.tmp2 set D05 = 10 where A01nficha = 6886 and D01 = 22385;

update pmad2018.tmp2 set D05 = 11 where A01nficha = 6886 and D01 = 22386;

update pmad2018.tmp2 set D05 = 65 where A01nficha = 7054 and D01 = 22898;

update pmad2018.tmp2 set D05 = 66 where A01nficha = 7054 and D01 = 22899;

update pmad2018.tmp2 set D05 = 47 where A01nficha = 7152 and D01 = 23208;

update pmad2018.tmp2 set D05 = 46 where A01nficha = 7152 and D01 = 23209;

update pmad2018.tmp2 set D05 = 26 where A01nficha = 7229 and D01 = 23479;

update pmad2018.tmp2 set D05 = 30 where A01nficha = 7229 and D01 = 23480;

update pmad2018.tmp2 set D05 = 50 where A01nficha = 7229 and D01 = 23481;

update pmad2018.tmp2 set D05 = 49 where A01nficha = 7229 and D01 = 23482;

update pmad2018.tmp2 set D05 = 40 where A01nficha = 7452 and D01 = 24201;

update pmad2018.tmp2 set D05 = 39 where A01nficha = 7452 and D01 = 24202;

update pmad2018.tmp2 set D05 = 15 where A01nficha = 7452 and D01 = 24203;

update pmad2018.tmp2 set D05 = 38 where A01nficha = 7483 and D01 = 24311;

update pmad2018.tmp2 set D05 = 41 where A01nficha = 7483 and D01 = 24312;

update pmad2018.tmp2 set D05 = 7 where A01nficha = 7545 and D01 = 24543;

update pmad2018.tmp2 set D05 = 6 where A01nficha = 7545 and D01 = 24544;

update pmad2018.tmp2 set D05 = 22 where A01nficha = 7545 and D01 = 24545;

update pmad2018.tmp2 set D05 = 38 where A01nficha = 9357 and D01 = 30255;

update pmad2018.tmp2 set D05 = 37 where A01nficha = 9357 and D01 = 30256;

update pmad2018.tmp2 set D05 = 43 where A01nficha = 9393 and D01 = 30368;

update pmad2018.tmp2 set D05 = 41 where A01nficha = 9393 and D01 = 30369;

/*Pessoas com marcação de filho mas com idade acima do Responsável pelo Domicílio receberão marcação: Outro parente*/
update pmad2018.tmp2 set D02=6 where A01nficha = 38 and D01 = 122;

update pmad2018.tmp2 set D02=6 where A01nficha = 1010 and D01 = 3334;

update pmad2018.tmp2 set D02=6 where A01nficha = 1010 and D01 = 3335;

update pmad2018.tmp2 set D02=6 where A01nficha = 1257 and D01 = 4101;

update pmad2018.tmp2 set D02=6 where A01nficha = 1277 and D01 = 4171;

update pmad2018.tmp2 set D02=6 where A01nficha = 1379 and D01 = 4484;

update pmad2018.tmp2 set D02=6 where A01nficha = 1466 and D01 = 4747;

update pmad2018.tmp2 set D02=6 where A01nficha = 1481 and D01 = 4805;

update pmad2018.tmp2 set D02=6 where A01nficha = 1481 and D01 = 4806;

update pmad2018.tmp2 set D02=6 where A01nficha = 1521 and D01 = 4947;

update pmad2018.tmp2 set D02=6 where A01nficha = 2001 and D01 = 6639;

update pmad2018.tmp2 set D02=6 where A01nficha = 2019 and D01 = 6704;

update pmad2018.tmp2 set D02=6 where A01nficha = 2057 and D01 = 6843;

update pmad2018.tmp2 set D02=6 where A01nficha = 2057 and D01 = 6844;

update pmad2018.tmp2 set D02=6 where A01nficha = 2057 and D01 = 6845;

update pmad2018.tmp2 set D02=6 where A01nficha = 2073 and D01 = 6900;

update pmad2018.tmp2 set D02=6 where A01nficha = 2081 and D01 = 6921;

update pmad2018.tmp2 set D02=6 where A01nficha = 2086 and D01 = 6939;

update pmad2018.tmp2 set D02=6 where A01nficha = 2090 and D01 = 6953;

update pmad2018.tmp2 set D02=6 where A01nficha = 2099 and D01 = 6978;

update pmad2018.tmp2 set D02=6 where A01nficha = 2282 and D01 = 7631;

update pmad2018.tmp2 set D02=6 where A01nficha = 2300 and D01 = 7683;

update pmad2018.tmp2 set D02=6 where A01nficha = 2895 and D01 = 9530;

update pmad2018.tmp2 set D02=6 where A01nficha = 3336 and D01 = 10847;

update pmad2018.tmp2 set D02=6 where A01nficha = 4803 and D01 = 15677;

update pmad2018.tmp2 set D02=6 where A01nficha = 4803 and D01 = 15678;

update pmad2018.tmp2 set D02=6 where A01nficha = 5051 and D01 = 16452;

update pmad2018.tmp2 set D02=6 where A01nficha = 5139 and D01 = 16752;

update pmad2018.tmp2 set D02=6 where A01nficha = 5142 and D01 = 16762;

update pmad2018.tmp2 set D02=6 where A01nficha = 5393 and D01 = 17600;

update pmad2018.tmp2 set D02=6 where A01nficha = 5509 and D01 = 17923;

update pmad2018.tmp2 set D02=6 where A01nficha = 5965 and D01 = 19450;

update pmad2018.tmp2 set D02=6 where A01nficha = 6177 and D01 = 20099;

update pmad2018.tmp2 set D02=6 where A01nficha = 6328 and D01 = 20508;

update pmad2018.tmp2 set D02=6 where A01nficha = 6626 and D01 = 21562;

update pmad2018.tmp2 set D02=6 where A01nficha = 6657 and D01 = 21688;

update pmad2018.tmp2 set D02=6 where A01nficha = 7273 and D01 = 23626;

update pmad2018.tmp2 set D02=6 where A01nficha = 9126 and D01 = 29469;

update pmad2018.tmp2 set D02=6 where A01nficha = 9249 and D01 = 29875;

update pmad2018.tmp2 set D02=6 where A01nficha = 9657 and D01 = 31220;

/*Para pessoas que não são naturais de Goiás ou Não Sabem devem ter Nâo sabem em Por que veio*/
update pmad2018.tmp2 set D14 = 88 where D10 in (1, 2, 3, 4, 5, 6, 7, 8, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28) and D14 = 99 

/*Para pessoas que não são naturais de Goiás ou Não Sabem devem ter Nâo sabem em Por que veio*/
update pmad2018.tmp2 set D12 = 8888 where D10 in (1, 2, 3, 4, 5, 6, 7, 8, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28) and D12 = 9999 

/*Para pessoas que não são naturais de Goiás ou Não Sabem devem ter Nâo sabem em Por que veio*/
update pmad2018.tmp2 set D11 = 99, D12 = 9999, D13 = 99, D14 = 99 where D10 in (9,88) 

/*Passo 06 - Criação da tabela final de MORADORES*/
/*Aqui foi implementado a correção da D12*/

IF OBJECT_ID('pmad2018.dp_mor_1718', 'U') IS NOT NULL DROP TABLE pmad2018.dp_mor_1718; 

select
t1.referencia, t1.municipio, t1.A01setor, t1.A01nficha_ant, t1.A01nficha, t1.A01npessoas, 
ROW_NUMBER() OVER(ORDER BY t1.municipio, t1.A01setor, t1.A01nficha_ant, t1.D05) AS D01,
t1.D02, t1.D06, t1.D03, case when t1.D04 = 8 then 88 else t1.D04 end as D04, t1.D05, 
case when t1.D07 = 8 then 88 else t1.D07 end as D07, t1.D08, t1.D09, t1.D10, t1.D11, 
case when T1.D12 < 8888 and t1.D05 < t1.referencia - t1.D12 - 1 then t1.referencia - t1.D05 - 1 else t1.D12 end as D12, t1.D13, 
t1.D14, t1.D15, t1.D16, t1.D17, t1.D18, t1.D19, t1.D20, t1.D21, t1.D22, 
t1.E01, t1.E02, t1.E03, t1.E04, t1.E05, t1.E06, t1.E07, t1.E08, t1.E09, 
t1.E10, t1.E11, t1.E12, t1.E13, t1.E14, t1.E15
into pmad2018.dp_mor_1718
from pmad2018.tmp2 t1;

/*Para pessoas que não são naturais de Goiás ou Não Sabem devem ter Nâo sabem em Por que veio*/
update pmad2018.dp_mor_1718 set D11 = 99, D12 = 9999, D13 = 99, D14 = 99 where D10 in (9,88) 

IF OBJECT_ID('pmad2018.tmp', 'U') IS NOT NULL DROP TABLE pmad2018.tmp; 

IF OBJECT_ID('pmad2018.tmp2', 'U') IS NOT NULL DROP TABLE pmad2018.tmp2; 

/*Passo 07 - Atribuição de nome correto à alguns setores que não estavam aparecendo de forma correta*/

update pmad2018.dp_dom_1718
set A01setor = 'Cocalzinho de Goiás: Sede'
where municipio = 'Cocalzinho de Goiás'
and A01nficha_ant in (1151, 1152, 1153, 1154, 1155, 1156, 1157, 1158, 1159, 1160, 1161, 1162,1163, 1164, 1165, 1166, 1167, 1168, 1169, 1171, 1173, 1174, 1175, 1176, 1177, 1178, 1179, 1180, 1181, 1182, 1183, 1184,
 1185, 1186, 1187, 1188, 1189, 1190, 1191, 1192, 1193, 1194, 1195, 1196, 1197, 1198, 1199, 1200, 1201, 1202, 1203, 1204, 1205, 1206, 1207, 1208, 1209, 1211, 1212, 1213, 1215, 1217, 1218, 1219,
 1220, 1221, 1224, 1225, 1226, 1227, 1228, 1229, 1231, 1232, 1233, 1235, 1236, 1237, 1238, 1239, 1240, 1242, 1243, 1244, 1246, 1247, 1248, 1249, 1250, 1251, 1252, 1253, 1254, 1255, 1256, 1257,
 1259, 1260, 1261, 1263, 1264, 1265, 1266, 1267, 1269, 1270, 1271, 1272, 1273, 1274, 1275, 1276, 1277, 1278, 1279, 1280, 1281, 1282, 1283, 1284, 1285, 1286, 1287, 1288, 1289, 1290, 1291, 1292,
 1293, 1294, 1295, 1296, 1297, 1298, 1300, 1301, 1302, 1303, 1304, 1305, 1306, 1307, 1308, 1309, 1310, 1311, 1312, 1313, 1314, 1315, 1316, 1317, 1318, 1320, 1321, 1322, 1323, 1324, 1326, 1327,
 1328, 1329, 1330, 1331, 1332, 1333, 1335, 1336, 1337, 1338, 1342, 1343, 1344, 1345, 1346, 1347, 1348, 1349, 1350, 1351, 1352, 1353, 1354, 1355, 1356, 1357, 1358, 1359, 1360, 1361, 1362, 1363,
 1364, 1365, 1366, 1367, 1368, 1370, 1371, 1373, 1375, 1376, 1377, 1378, 1380, 1381, 1382, 1383, 1384, 1385, 1386, 1387, 1388, 1389, 1390, 1391, 1393, 1394, 1395, 1396, 1397, 1398, 1399, 1400,
 1401, 1403, 1405, 1406, 1407, 1408, 1409, 1410, 1411, 1412, 1414, 1415, 1416, 1417, 1418, 1420, 1421, 1422, 1423, 1425, 1426, 1427, 1428, 1429, 1430, 1431, 1432, 1433, 1434, 1435, 1436, 1437,
 1438, 1439, 1440, 1441, 1442, 1445, 1446, 1447, 1448, 1449, 1450, 1451, 1453, 1454, 1455, 1456, 1457, 1458, 1459, 1460, 1461, 1462, 1463, 1464, 1465, 1466, 1467, 1470, 1472, 1473, 1474, 1476,
 1478, 1479, 1480, 1481, 1482, 1483, 1484, 1485, 1486, 1487, 1488, 1489, 1492, 1493, 1495, 1496, 1498, 1499, 1501, 1502, 1503, 1506, 1507, 1508, 1509, 1510, 1511, 1512, 1514, 1517, 1518, 1520,
 1521, 1522, 1524, 1526, 1527, 1528, 1529, 1530, 1531, 1532, 1533, 1534, 1535, 1536, 1537, 1538, 1540, 1541, 1542, 1543, 1544, 1545, 1546, 1547, 1548, 1549, 1550, 1551, 1553, 1555, 1556, 1557,
 1558, 1559, 1561, 1562, 1563, 1564, 1565, 1566, 1567, 1568, 1569, 1570, 1571, 1572, 1573, 1574, 1575, 1577, 1578, 1579, 1580, 1581, 1582, 1583, 1585, 1586, 1587, 1588, 1589, 1590, 1591, 1592,
 1593, 1594, 1595, 1597, 1598, 1599, 1600, 1601, 1602, 1604, 1605, 1606, 1607, 1608, 1609, 1610, 1611, 1612, 1613, 1614, 1615, 1616, 1617, 1619, 1620, 1621, 1622, 1623, 1624, 1625, 1626, 1627,
 1628, 1629, 1630, 1633, 1634, 1635, 1636, 1637, 1639, 1640, 1641, 1642, 1643, 1644, 1645, 1646, 1647, 1648, 1649, 1650, 1651, 1654, 1656, 1657, 1658, 1659, 1660, 1663, 1665, 1666, 1667, 1668,
 1669, 1670, 1671, 1672, 1673, 1674, 1675, 1676, 1677, 1678, 1679, 1681, 1682, 1683, 1684, 1685, 1686, 1687, 1688, 1689, 1690, 1691, 1693, 1694, 1696, 1697, 1698, 1699, 1700, 1701, 1702, 1703,
 1704, 1705, 1706, 1707, 1709, 1711, 1712, 1714, 1715, 1716, 1717, 1718, 1719, 1720, 1722, 1723, 1724, 1725, 1726, 1727, 1730, 1731, 1732, 1733, 1734, 1735, 1736, 1737, 1738, 1739, 1740, 1741,
 1742, 1743, 1744, 1745, 1746, 1747, 1748, 1749, 1750, 1751, 1752, 1753, 1754, 1755, 1756, 1757, 1758, 1759, 1760, 1761, 1762, 1763, 1764, 1765, 1766, 1767, 1768, 1769, 1770, 1771, 1773, 1774,
 1775, 1776, 1777, 1778, 1779, 1781, 1783, 1784, 1785, 1786, 1787, 1788, 1789, 1790, 1791, 1792, 1793, 1794, 1795, 1797, 1799, 1800, 1802, 1803, 1804, 1805, 1806, 1807, 1809, 1810);

update pmad2018.dp_mor_1718
set A01setor = 'Cocalzinho de Goiás: Sede'
where municipio = 'Cocalzinho de Goiás'
and A01nficha_ant in (1151, 1152, 1153, 1154, 1155, 1156, 1157, 1158, 1159, 1160, 1161, 1162,1163, 1164, 1165, 1166, 1167, 1168, 1169, 1171, 1173, 1174, 1175, 1176, 1177, 1178, 1179, 1180, 1181, 1182, 1183, 1184,
 1185, 1186, 1187, 1188, 1189, 1190, 1191, 1192, 1193, 1194, 1195, 1196, 1197, 1198, 1199, 1200, 1201, 1202, 1203, 1204, 1205, 1206, 1207, 1208, 1209, 1211, 1212, 1213, 1215, 1217, 1218, 1219,
 1220, 1221, 1224, 1225, 1226, 1227, 1228, 1229, 1231, 1232, 1233, 1235, 1236, 1237, 1238, 1239, 1240, 1242, 1243, 1244, 1246, 1247, 1248, 1249, 1250, 1251, 1252, 1253, 1254, 1255, 1256, 1257,
 1259, 1260, 1261, 1263, 1264, 1265, 1266, 1267, 1269, 1270, 1271, 1272, 1273, 1274, 1275, 1276, 1277, 1278, 1279, 1280, 1281, 1282, 1283, 1284, 1285, 1286, 1287, 1288, 1289, 1290, 1291, 1292,
 1293, 1294, 1295, 1296, 1297, 1298, 1300, 1301, 1302, 1303, 1304, 1305, 1306, 1307, 1308, 1309, 1310, 1311, 1312, 1313, 1314, 1315, 1316, 1317, 1318, 1320, 1321, 1322, 1323, 1324, 1326, 1327,
 1328, 1329, 1330, 1331, 1332, 1333, 1335, 1336, 1337, 1338, 1342, 1343, 1344, 1345, 1346, 1347, 1348, 1349, 1350, 1351, 1352, 1353, 1354, 1355, 1356, 1357, 1358, 1359, 1360, 1361, 1362, 1363,
 1364, 1365, 1366, 1367, 1368, 1370, 1371, 1373, 1375, 1376, 1377, 1378, 1380, 1381, 1382, 1383, 1384, 1385, 1386, 1387, 1388, 1389, 1390, 1391, 1393, 1394, 1395, 1396, 1397, 1398, 1399, 1400,
 1401, 1403, 1405, 1406, 1407, 1408, 1409, 1410, 1411, 1412, 1414, 1415, 1416, 1417, 1418, 1420, 1421, 1422, 1423, 1425, 1426, 1427, 1428, 1429, 1430, 1431, 1432, 1433, 1434, 1435, 1436, 1437,
 1438, 1439, 1440, 1441, 1442, 1445, 1446, 1447, 1448, 1449, 1450, 1451, 1453, 1454, 1455, 1456, 1457, 1458, 1459, 1460, 1461, 1462, 1463, 1464, 1465, 1466, 1467, 1470, 1472, 1473, 1474, 1476,
 1478, 1479, 1480, 1481, 1482, 1483, 1484, 1485, 1486, 1487, 1488, 1489, 1492, 1493, 1495, 1496, 1498, 1499, 1501, 1502, 1503, 1506, 1507, 1508, 1509, 1510, 1511, 1512, 1514, 1517, 1518, 1520,
 1521, 1522, 1524, 1526, 1527, 1528, 1529, 1530, 1531, 1532, 1533, 1534, 1535, 1536, 1537, 1538, 1540, 1541, 1542, 1543, 1544, 1545, 1546, 1547, 1548, 1549, 1550, 1551, 1553, 1555, 1556, 1557,
 1558, 1559, 1561, 1562, 1563, 1564, 1565, 1566, 1567, 1568, 1569, 1570, 1571, 1572, 1573, 1574, 1575, 1577, 1578, 1579, 1580, 1581, 1582, 1583, 1585, 1586, 1587, 1588, 1589, 1590, 1591, 1592,
 1593, 1594, 1595, 1597, 1598, 1599, 1600, 1601, 1602, 1604, 1605, 1606, 1607, 1608, 1609, 1610, 1611, 1612, 1613, 1614, 1615, 1616, 1617, 1619, 1620, 1621, 1622, 1623, 1624, 1625, 1626, 1627,
 1628, 1629, 1630, 1633, 1634, 1635, 1636, 1637, 1639, 1640, 1641, 1642, 1643, 1644, 1645, 1646, 1647, 1648, 1649, 1650, 1651, 1654, 1656, 1657, 1658, 1659, 1660, 1663, 1665, 1666, 1667, 1668,
 1669, 1670, 1671, 1672, 1673, 1674, 1675, 1676, 1677, 1678, 1679, 1681, 1682, 1683, 1684, 1685, 1686, 1687, 1688, 1689, 1690, 1691, 1693, 1694, 1696, 1697, 1698, 1699, 1700, 1701, 1702, 1703,
 1704, 1705, 1706, 1707, 1709, 1711, 1712, 1714, 1715, 1716, 1717, 1718, 1719, 1720, 1722, 1723, 1724, 1725, 1726, 1727, 1730, 1731, 1732, 1733, 1734, 1735, 1736, 1737, 1738, 1739, 1740, 1741,
 1742, 1743, 1744, 1745, 1746, 1747, 1748, 1749, 1750, 1751, 1752, 1753, 1754, 1755, 1756, 1757, 1758, 1759, 1760, 1761, 1762, 1763, 1764, 1765, 1766, 1767, 1768, 1769, 1770, 1771, 1773, 1774,
 1775, 1776, 1777, 1778, 1779, 1781, 1783, 1784, 1785, 1786, 1787, 1788, 1789, 1790, 1791, 1792, 1793, 1794, 1795, 1797, 1799, 1800, 1802, 1803, 1804, 1805, 1806, 1807, 1809, 1810);

update pmad2018.dp_dom_1718
set A01setor = 'Cocalzinho de Goiás: Girassol/Edilândia'
where municipio = 'Cocalzinho de Goiás'
and A01nficha_ant in (1811,1812,1813,1814,1815,1816,1817,1818,1820,1821,1822,1823,1824,1825,1826,1827,1828,1829,1830,1831,1832,1833,1834,1835,1836,1837,1838,1839,1840,1841,1842,1843,1844,1845,1846,1847,1848,1849,
1850,1851,1855,1856,1857,1858,1859,1861,1862,1863,1864,1865,1866,1868,1869,1871,1873,1875,1876,1877,1878,1879,1880,1881,1882,1883,1884,1885,1886,1887,1888,1890,1891,1892,1893,1894,1895,1896,
1897,1898,1899,1900,1901,1902,1903,1904,1905,1906,1907,1908,1909,1910,1912,1913,1914,1915,1917,1920,1923,1924,1925,1926,1928,1929,1930,1931,1932,1933,1934,1935,1936,1937,1938,1939,1940,1941,
1942,1943,1944,1945,1946,1947,1948,1949,1950,1951,1952,1955,1956,1957,1958,1959,1960,1961,1962,1963,1964,1965,1966,1967,1968,1969,1970,1971,1972,1973,1974,1975,1976,1977,1978,1979,1980,1981,
1982,1983,1984,1985,1986,1987,1988,1989,1990,1991,1992,1993,1994,1995,1996,1997,1998,1999,2000,2001,2002,2003,2004,2005,2006,2007,2008,2009,2010,2012,2013,2014,2015,2016,2017,2019,2020,2021,
2022,2023,2024,2025,2026,2027,2028,2029,2030,2031,2032,2033,2034,2035,2036,2037,2038,2039,2040,2041,2042,2044,2045,2046,2047,2048,2049,2050,2052,2053,2054,2055,2056,2057,2058,2059,2060,2061,
2062,2063,2064,2065,2066,2067,2068,2069,2070,2071,2072,2073,2074,2075,2076,2077,2078,2080,2081,2083,2084,2085,2086,2087,2088,2090,2091,2094,2095,2096,2097,2098,2099,2100,2102,2105,2106,2108,
2109,2110,2111,2112,2113,2114,2115,2116,2117,2118,2119,2120,2121,2122,2123,2124,2126,2127,2128,2129,2130,2132,2133,2134,2136,2137,2138,2139,2140,2141,2142,2143,2144,2145,2146,2150,2152,2153,
2155,2156,2157,2158,2159,2160,2162,2163,2164,2165,2170,2171,2174,2175,2176,2177,2178,2180,2181,2182,2183,2184,2185,2186,2187,2188,2189,2190,2191,2192,2193,2195,2197,2199,2200,2201,2202,2203,
2204,2205,2206,2208,2209,2212,2213,2214,2215,2216,2217,2218,2219,2220,2221,2222,2223,2224,2225,2226,2228,2229,2230,2231,2232,2233,2235,2236,2237,2238,2239,2240,2242,2243,2244,2245,2246,2247,
2248,2249,2250,2251,2252,2254,2255,2256,2257,2258,2259,2260,2261,2263,2264,2265,2267,2268,2270,2271,2273,2274,2275,2276,2277,2278,2279,2280,2281,2282,2283,2284,2285,2286,2288,2289,2290,2291,
2292,2293,2294,2295,2296,2297,2298,2299,2300,2301,2302,2303,2304,2305,2306,2307,2309,2310,2311,2318,2323,2325,2326,2327,2328,2332,2333,2334,2336,2338,2341,2342,2346,2351,2353,2355,2356,2357,
2358,2359,2360,2361,2362,2363,2364,2365,2366,2367,2368,2369,2370,2375,2376,2378,2379,2386,2387,2389,2391,2392,2393,2394,2396,2397,2398,2401,2402,2407,2408,2414,2417,2427,2428,2432,2433,2434,
2435,2436,2437,2438,2439,2440,2441,2442,2443,2444,2445,2446,2447,2448,2449,2450,2451,2452,2453,2454,2455,2456,2457,2458,2459,2460,2461,2462,2463,2464,2465,2466,2467,2468,2469);

update pmad2018.dp_mor_1718
set A01setor = 'Cocalzinho de Goiás: Girassol/Edilândia'
where municipio = 'Cocalzinho de Goiás'
and A01nficha_ant in (1811,1812,1813,1814,1815,1816,1817,1818,1820,1821,1822,1823,1824,1825,1826,1827,1828,1829,1830,1831,1832,1833,1834,1835,1836,1837,1838,1839,1840,1841,1842,1843,1844,1845,1846,1847,1848,1849,
1850,1851,1855,1856,1857,1858,1859,1861,1862,1863,1864,1865,1866,1868,1869,1871,1873,1875,1876,1877,1878,1879,1880,1881,1882,1883,1884,1885,1886,1887,1888,1890,1891,1892,1893,1894,1895,1896,
1897,1898,1899,1900,1901,1902,1903,1904,1905,1906,1907,1908,1909,1910,1912,1913,1914,1915,1917,1920,1923,1924,1925,1926,1928,1929,1930,1931,1932,1933,1934,1935,1936,1937,1938,1939,1940,1941,
1942,1943,1944,1945,1946,1947,1948,1949,1950,1951,1952,1955,1956,1957,1958,1959,1960,1961,1962,1963,1964,1965,1966,1967,1968,1969,1970,1971,1972,1973,1974,1975,1976,1977,1978,1979,1980,1981,
1982,1983,1984,1985,1986,1987,1988,1989,1990,1991,1992,1993,1994,1995,1996,1997,1998,1999,2000,2001,2002,2003,2004,2005,2006,2007,2008,2009,2010,2012,2013,2014,2015,2016,2017,2019,2020,2021,
2022,2023,2024,2025,2026,2027,2028,2029,2030,2031,2032,2033,2034,2035,2036,2037,2038,2039,2040,2041,2042,2044,2045,2046,2047,2048,2049,2050,2052,2053,2054,2055,2056,2057,2058,2059,2060,2061,
2062,2063,2064,2065,2066,2067,2068,2069,2070,2071,2072,2073,2074,2075,2076,2077,2078,2080,2081,2083,2084,2085,2086,2087,2088,2090,2091,2094,2095,2096,2097,2098,2099,2100,2102,2105,2106,2108,
2109,2110,2111,2112,2113,2114,2115,2116,2117,2118,2119,2120,2121,2122,2123,2124,2126,2127,2128,2129,2130,2132,2133,2134,2136,2137,2138,2139,2140,2141,2142,2143,2144,2145,2146,2150,2152,2153,
2155,2156,2157,2158,2159,2160,2162,2163,2164,2165,2170,2171,2174,2175,2176,2177,2178,2180,2181,2182,2183,2184,2185,2186,2187,2188,2189,2190,2191,2192,2193,2195,2197,2199,2200,2201,2202,2203,
2204,2205,2206,2208,2209,2212,2213,2214,2215,2216,2217,2218,2219,2220,2221,2222,2223,2224,2225,2226,2228,2229,2230,2231,2232,2233,2235,2236,2237,2238,2239,2240,2242,2243,2244,2245,2246,2247,
2248,2249,2250,2251,2252,2254,2255,2256,2257,2258,2259,2260,2261,2263,2264,2265,2267,2268,2270,2271,2273,2274,2275,2276,2277,2278,2279,2280,2281,2282,2283,2284,2285,2286,2288,2289,2290,2291,
2292,2293,2294,2295,2296,2297,2298,2299,2300,2301,2302,2303,2304,2305,2306,2307,2309,2310,2311,2318,2323,2325,2326,2327,2328,2332,2333,2334,2336,2338,2341,2342,2346,2351,2353,2355,2356,2357,
2358,2359,2360,2361,2362,2363,2364,2365,2366,2367,2368,2369,2370,2375,2376,2378,2379,2386,2387,2389,2391,2392,2393,2394,2396,2397,2398,2401,2402,2407,2408,2414,2417,2427,2428,2432,2433,2434,
2435,2436,2437,2438,2439,2440,2441,2442,2443,2444,2445,2446,2447,2448,2449,2450,2451,2452,2453,2454,2455,2456,2457,2458,2459,2460,2461,2462,2463,2464,2465,2466,2467,2468,2469);

update pmad2018.dp_dom_1718
set A01setor = 'Padre Bernardo: Monte Alto'
where municipio = 'Padre Bernardo'
and A01nficha_ant in (3131,3132,3133,3134,3135,3137,3138,3139,3144,3145,3146,3147,3148,3149,3150,3152,3155,3156,3157,3158,3160,3161,3163,3164,3169,3171,3172,3175,3180,3181,3183,3184,3185,3186,3187,
3188,3190,3191,3192,3193,3194,3195,3196,3197,3198,3199,3200,3201,3202,3203,3204,3205,3206,3207,3208,3209,3210,3211,3212,3213,3214,3215,3216,3217,3218,3219,3220,3221,3222,3223,
3224,3225,3227,3228,3229,3230,3231,3232,3233,3234,3235,3236,3237,3238,3239,3241,3242,3243,3246,3247,3248,3249,3251,3253,3254,3255,3256,3257,3258,3259,3260,3261,3262,3263,3264,
3266,3267,3268,3269,3270,3272,3274,3275,3276,3277,3279,3280,3284,3285,3286,3287,3288,3289,3290,3291,3292,3293,3294,3295,3297,3298,3299,3300,3301,3302,3303,3304,3305,3306,3307,
3308,3309,3310,3311,3312,3313,3314,3316,3317,3318,3319,3320,3321,3323,3324,3325,3332,3348,3357,3358,3359,3360,3361,3362,3363,3364,3367,3368,3371,3372,3373,3374,3375,3376,3378,
3379,3380,3381,3383,3384,3385,3386,3387,3389,3390,3391,3392,3393,3394,3395,3398,3399,3400,3404,3405,3406,3408,3409,3410,3411,3412,3413,3414,3416,3417,3418,3419,3420,3421,3422,
3423,3424,3425,3427,3428,3431,3432,3433,3434,3435,3437,3438,3439,3440,3441,3442,3443,3444,3445,3446,3447,3448,3449,3450,3451,3452,3454,3456,3457,3458,3459,3460,3461,3462,3464,
3465,3466,3467,3469,3472,3473,3474,3476,3478,3479,3480,3482,3483,3485,3486,3487,3488,3489,3494,3495,3497,3498,3500,3501,3502,3503,3505,3506,3507,3508,3509,3510,3511,3512,3513,
3514,3515,3516,3517,3518,3519,3520,3521,3522,3523,3524,3525,3526,3527,3528,3529,3531,3532,3533,3534,3535,3536,3537,3538,3539,3540,3541,3544,3545,3546,3547,3548,3549,3551,3552,
3553,3555,3557,3558,3559,3560,3562,3563,3565,3566,3568,3569,3570,3571,3572,3573,3574,3575,3576,3577,3578,3579,3580,3581,3582,3583,3584,3585,3586,3587,3588,3589,3590,3591,3592,
3593,3595,3596,3599,3600,3602,3603,3604,3605,3606,3607,3608,3609,3610,3611,3612,3613,3614,3615,3616,3617,3618,3619,3620,3621,3622,3623,3624,3625,3626,3627,3628,3629,3630,3631,
3632,3633,3634,3635,3636,3637,3638,3639,3640,3641,3642,3643,3644,3645,3648,3650,3651,3652,3653,3654,3655,3656,3657,3658,3659,3660,3661,3662,3663,3664,3665,3666,3667,3669,3670,
3671,3672,3674,3675,3676,3677,3678,3679,3680,3681,3682,3683,3684,3685,3686,3687,3688,3689,3690,3692,3695,3696,3697,3698,3699,3700,3701,3702,3703,3704,3705,3706,3707,3708,3709,
3710,3711,3712,3713,3714,3715,3716,3717,3718,3719,3720,3723,3724,3725,3726,3727,3728,3731,3732,3733,3734,3735,3759,3761,3762,3763,3765,3768,3769,3770,3771,3772,3773,3774,3775,
3777,3778,3780,3782,3783,3784,3785,3788);

update pmad2018.dp_mor_1718
set A01setor = 'Padre Bernardo: Monte Alto'
where municipio = 'Padre Bernardo'
and A01nficha_ant in (3131,3132,3133,3134,3135,3137,3138,3139,3144,3145,3146,3147,3148,3149,3150,3152,3155,3156,3157,3158,3160,3161,3163,3164,3169,3171,3172,3175,3180,3181,3183,3184,3185,3186,3187,
3188,3190,3191,3192,3193,3194,3195,3196,3197,3198,3199,3200,3201,3202,3203,3204,3205,3206,3207,3208,3209,3210,3211,3212,3213,3214,3215,3216,3217,3218,3219,3220,3221,3222,3223,
3224,3225,3227,3228,3229,3230,3231,3232,3233,3234,3235,3236,3237,3238,3239,3241,3242,3243,3246,3247,3248,3249,3251,3253,3254,3255,3256,3257,3258,3259,3260,3261,3262,3263,3264,
3266,3267,3268,3269,3270,3272,3274,3275,3276,3277,3279,3280,3284,3285,3286,3287,3288,3289,3290,3291,3292,3293,3294,3295,3297,3298,3299,3300,3301,3302,3303,3304,3305,3306,3307,
3308,3309,3310,3311,3312,3313,3314,3316,3317,3318,3319,3320,3321,3323,3324,3325,3332,3348,3357,3358,3359,3360,3361,3362,3363,3364,3367,3368,3371,3372,3373,3374,3375,3376,3378,
3379,3380,3381,3383,3384,3385,3386,3387,3389,3390,3391,3392,3393,3394,3395,3398,3399,3400,3404,3405,3406,3408,3409,3410,3411,3412,3413,3414,3416,3417,3418,3419,3420,3421,3422,
3423,3424,3425,3427,3428,3431,3432,3433,3434,3435,3437,3438,3439,3440,3441,3442,3443,3444,3445,3446,3447,3448,3449,3450,3451,3452,3454,3456,3457,3458,3459,3460,3461,3462,3464,
3465,3466,3467,3469,3472,3473,3474,3476,3478,3479,3480,3482,3483,3485,3486,3487,3488,3489,3494,3495,3497,3498,3500,3501,3502,3503,3505,3506,3507,3508,3509,3510,3511,3512,3513,
3514,3515,3516,3517,3518,3519,3520,3521,3522,3523,3524,3525,3526,3527,3528,3529,3531,3532,3533,3534,3535,3536,3537,3538,3539,3540,3541,3544,3545,3546,3547,3548,3549,3551,3552,
3553,3555,3557,3558,3559,3560,3562,3563,3565,3566,3568,3569,3570,3571,3572,3573,3574,3575,3576,3577,3578,3579,3580,3581,3582,3583,3584,3585,3586,3587,3588,3589,3590,3591,3592,
3593,3595,3596,3599,3600,3602,3603,3604,3605,3606,3607,3608,3609,3610,3611,3612,3613,3614,3615,3616,3617,3618,3619,3620,3621,3622,3623,3624,3625,3626,3627,3628,3629,3630,3631,
3632,3633,3634,3635,3636,3637,3638,3639,3640,3641,3642,3643,3644,3645,3648,3650,3651,3652,3653,3654,3655,3656,3657,3658,3659,3660,3661,3662,3663,3664,3665,3666,3667,3669,3670,
3671,3672,3674,3675,3676,3677,3678,3679,3680,3681,3682,3683,3684,3685,3686,3687,3688,3689,3690,3692,3695,3696,3697,3698,3699,3700,3701,3702,3703,3704,3705,3706,3707,3708,3709,
3710,3711,3712,3713,3714,3715,3716,3717,3718,3719,3720,3723,3724,3725,3726,3727,3728,3731,3732,3733,3734,3735,3759,3761,3762,3763,3765,3768,3769,3770,3771,3772,3773,3774,3775,
3777,3778,3780,3782,3783,3784,3785,3788);

update pmad2018.dp_dom_1718
set A01setor = 'Padre Bernardo: Sede'
where municipio = 'Padre Bernardo'
and A01nficha_ant in (2471,2472,2473,2474,2475,2476,2477,2478,2479,2480,2482,2484,2485,2486,2487,2489,2490,2491,2496,2498,2499,2500,2501,2502,2504,2505,2506,2509,2510,2511,2512,2513,2514,2515,
2516,2517,2518,2519,2521,2522,2523,2524,2525,2526,2527,2528,2529,2530,2531,2532,2533,2534,2535,2536,2538,2540,2541,2542,2544,2545,2546,2547,2548,2549,2550,2551,2552,2553,
2554,2555,2556,2557,2558,2559,2560,2561,2562,2563,2564,2565,2566,2567,2568,2569,2570,2571,2572,2573,2574,2575,2576,2577,2578,2579,2580,2581,2582,2583,2584,2585,2586,2587,
2588,2589,2591,2592,2593,2594,2595,2596,2597,2598,2599,2600,2601,2602,2603,2605,2607,2608,2609,2610,2611,2612,2613,2616,2617,2618,2619,2620,2621,2622,2623,2624,2625,2628,
2629,2630,2631,2632,2633,2634,2635,2636,2637,2638,2639,2641,2642,2643,2645,2647,2648,2649,2650,2651,2652,2653,2654,2655,2656,2657,2658,2659,2660,2661,2662,2663,2664,2665,
2666,2667,2668,2669,2670,2671,2672,2673,2675,2676,2677,2678,2679,2680,2681,2682,2683,2684,2685,2686,2687,2688,2689,2690,2691,2692,2693,2694,2695,2696,2697,2698,2699,2700,
2701,2702,2703,2704,2705,2706,2707,2708,2709,2710,2711,2712,2714,2715,2716,2717,2718,2719,2720,2721,2722,2724,2725,2726,2727,2728,2729,2730,2731,2736,2738,2739,2740,2741,
2742,2743,2745,2746,2747,2748,2749,2750,2751,2752,2753,2754,2755,2756,2757,2758,2759,2760,2761,2762,2764,2766,2770,2773,2775,2776,2784,2785,2786,2787,2789,2791,2792,2793,
2794,2795,2796,2797,2798,2799,2800,2802,2803,2804,2805,2806,2807,2808,2809,2810,2811,2812,2813,2814,2815,2816,2818,2819,2820,2821,2822,2823,2824,2825,2826,2827,2828,2829,
2830,2831,2832,2833,2834,2835,2836,2837,2838,2839,2840,2841,2842,2843,2844,2845,2846,2847,2848,2849,2850,2851,2852,2853,2854,2855,2856,2857,2858,2859,2860,2861,2862,2863,
2864,2865,2866,2867,2869,2870,2871,2872,2873,2874,2875,2876,2877,2878,2879,2880,2881,2882,2883,2884,2885,2886,2887,2888,2889,2890,2891,2892,2893,2894,2895,2896,2897,2898,
2899,2900,2901,2902,2903,2904,2905,2906,2907,2910,2911,2912,2913,2914,2915,2916,2917,2918,2919,2920,2921,2922,2923,2924,2925,2926,2927,2928,2929,2930,2931,2932,2933,2934,
2936,2937,2938,2939,2940,2941,2942,2943,2944,2945,2946,2947,2949,2951,2952,2953,2963,2964,2965,2966,2967,2968,2969,2970,2971,2972,2973,2974,2975,2976,2977,2978,2979,2980,
2981,2982,2983,2985,2986,2987,2988,2989,2990,2991,2992,2993,2994,2995,2996,2997,2998,2999,3000,3001,3002,3004,3005,3007,3009,3010,3011,3012,3013,3014,3015,3016,3017,3018,
3019,3020,3021,3022,3023,3024,3025,3027,3028,3029,3030,3031,3032,3033,3034,3035,3036,3037,3038,3039,3040,3041,3042,3043,3044,3045,3047,3051,3054,3055,3058,3059,3060,3062,
3063,3064,3065,3067,3068,3069,3070,3071,3072,3073,3075,3076,3077,3079,3081,3087,3088,3089,3090,3091,3093,3096,3097,3098,3099,3100,3104,3105,3106,3107,3108,3109,3110,3113,
3115,3116,3117,3118,3120,3121,3122,3123,3124,3125,3127,3128,3129);

update pmad2018.dp_mor_1718
set A01setor = 'Padre Bernardo: Sede'
where municipio = 'Padre Bernardo'
and A01nficha_ant in (2471,2472,2473,2474,2475,2476,2477,2478,2479,2480,2482,2484,2485,2486,2487,2489,2490,2491,2496,2498,2499,2500,2501,2502,2504,2505,2506,2509,2510,2511,2512,2513,2514,2515,
2516,2517,2518,2519,2521,2522,2523,2524,2525,2526,2527,2528,2529,2530,2531,2532,2533,2534,2535,2536,2538,2540,2541,2542,2544,2545,2546,2547,2548,2549,2550,2551,2552,2553,
2554,2555,2556,2557,2558,2559,2560,2561,2562,2563,2564,2565,2566,2567,2568,2569,2570,2571,2572,2573,2574,2575,2576,2577,2578,2579,2580,2581,2582,2583,2584,2585,2586,2587,
2588,2589,2591,2592,2593,2594,2595,2596,2597,2598,2599,2600,2601,2602,2603,2605,2607,2608,2609,2610,2611,2612,2613,2616,2617,2618,2619,2620,2621,2622,2623,2624,2625,2628,
2629,2630,2631,2632,2633,2634,2635,2636,2637,2638,2639,2641,2642,2643,2645,2647,2648,2649,2650,2651,2652,2653,2654,2655,2656,2657,2658,2659,2660,2661,2662,2663,2664,2665,
2666,2667,2668,2669,2670,2671,2672,2673,2675,2676,2677,2678,2679,2680,2681,2682,2683,2684,2685,2686,2687,2688,2689,2690,2691,2692,2693,2694,2695,2696,2697,2698,2699,2700,
2701,2702,2703,2704,2705,2706,2707,2708,2709,2710,2711,2712,2714,2715,2716,2717,2718,2719,2720,2721,2722,2724,2725,2726,2727,2728,2729,2730,2731,2736,2738,2739,2740,2741,
2742,2743,2745,2746,2747,2748,2749,2750,2751,2752,2753,2754,2755,2756,2757,2758,2759,2760,2761,2762,2764,2766,2770,2773,2775,2776,2784,2785,2786,2787,2789,2791,2792,2793,
2794,2795,2796,2797,2798,2799,2800,2802,2803,2804,2805,2806,2807,2808,2809,2810,2811,2812,2813,2814,2815,2816,2818,2819,2820,2821,2822,2823,2824,2825,2826,2827,2828,2829,
2830,2831,2832,2833,2834,2835,2836,2837,2838,2839,2840,2841,2842,2843,2844,2845,2846,2847,2848,2849,2850,2851,2852,2853,2854,2855,2856,2857,2858,2859,2860,2861,2862,2863,
2864,2865,2866,2867,2869,2870,2871,2872,2873,2874,2875,2876,2877,2878,2879,2880,2881,2882,2883,2884,2885,2886,2887,2888,2889,2890,2891,2892,2893,2894,2895,2896,2897,2898,
2899,2900,2901,2902,2903,2904,2905,2906,2907,2910,2911,2912,2913,2914,2915,2916,2917,2918,2919,2920,2921,2922,2923,2924,2925,2926,2927,2928,2929,2930,2931,2932,2933,2934,
2936,2937,2938,2939,2940,2941,2942,2943,2944,2945,2946,2947,2949,2951,2952,2953,2963,2964,2965,2966,2967,2968,2969,2970,2971,2972,2973,2974,2975,2976,2977,2978,2979,2980,
2981,2982,2983,2985,2986,2987,2988,2989,2990,2991,2992,2993,2994,2995,2996,2997,2998,2999,3000,3001,3002,3004,3005,3007,3009,3010,3011,3012,3013,3014,3015,3016,3017,3018,
3019,3020,3021,3022,3023,3024,3025,3027,3028,3029,3030,3031,3032,3033,3034,3035,3036,3037,3038,3039,3040,3041,3042,3043,3044,3045,3047,3051,3054,3055,3058,3059,3060,3062,
3063,3064,3065,3067,3068,3069,3070,3071,3072,3073,3075,3076,3077,3079,3081,3087,3088,3089,3090,3091,3093,3096,3097,3098,3099,3100,3104,3105,3106,3107,3108,3109,3110,3113,
3115,3116,3117,3118,3120,3121,3122,3123,3124,3125,3127,3128,3129);

/*Passo 08 - Correção da grafia de nomes*/

update pmad2018.dp_dom_1718 set A01setor = 'Águas Lindas de Goiás' where A01setor = 'Aguas Lindas de Goias';

update pmad2018.dp_mor_1718 set A01setor = 'Águas Lindas de Goiás' where A01setor = 'Aguas Lindas de Goias';

update pmad2018.dp_dom_1718 set A01setor = 'Valparaíso de Goiás' where A01setor = 'Valparaiso de Goias';

update pmad2018.dp_mor_1718 set A01setor = 'Valparaíso de Goiás' where A01setor = 'Valparaiso de Goias';


/*Passo 09 - Inserção do peso pré e da projeção populacional por setor pesquisado*/

ALTER TABLE pmad2018.dp_dom_1718 ADD peso_pre float null, pop_proj int null ;

update pmad2018.dp_dom_1718 set peso_pre = 41.4826086956522, pop_proj = 206758 where A01setor = 'Águas Lindas de Goiás';

update pmad2018.dp_dom_1718 set peso_pre = 13.42, pop_proj = 22546 where A01setor = 'Alexânia';

update pmad2018.dp_dom_1718 set peso_pre = 5.942, pop_proj = 12387 where A01setor = 'Cidade Ocidental: Jardim ABC';

update pmad2018.dp_dom_1718 set peso_pre = 23.2716666666667, pop_proj = 54532 where A01setor = 'Cidade Ocidental: Sede';

update pmad2018.dp_dom_1718 set peso_pre = 3.28333333333333, pop_proj = 7415 where A01setor = 'Cocalzinho de Goiás: Girassol/Edilândia';

update pmad2018.dp_dom_1718 set peso_pre = 3.72424242424242, pop_proj = 7586 where A01setor = 'Cocalzinho de Goiás: Sede';

update pmad2018.dp_dom_1718 set peso_pre = 5.038, pop_proj = 8191 where A01setor = 'Cristalina: Campos Lindos/Marajó';

update pmad2018.dp_dom_1718 set peso_pre = 17.1927272727273, pop_proj = 39451 where A01setor = 'Cristalina: Sede';

update pmad2018.dp_dom_1718 set peso_pre = 32.49, pop_proj = 109880 where A01setor = 'Formosa';

update pmad2018.dp_dom_1718 set peso_pre = 39.9879518072289, pop_proj = 70310 where A01setor = 'Luziânia: Jardim Ingá';

update pmad2018.dp_dom_1718 set peso_pre = 39.8989769820972, pop_proj = 120941 where A01setor = 'Luziânia: Sede';

update pmad2018.dp_dom_1718 set peso_pre = 34.4675, pop_proj = 112426 where A01setor = 'Novo Gama';

update pmad2018.dp_dom_1718 set peso_pre = 4.53484848484849, pop_proj = 9602 where A01setor = 'Padre Bernardo: Monte Alto';

update pmad2018.dp_dom_1718 set peso_pre = 5.51060606060606, pop_proj = 16516 where A01setor = 'Padre Bernardo: Sede';

update pmad2018.dp_dom_1718 set peso_pre = 31.868, pop_proj = 84739 where A01setor = 'Planaltina';

update pmad2018.dp_dom_1718 set peso_pre = 27.0215384615385, pop_proj = 66138 where A01setor = 'Santo Antônio do Descoberto';

update pmad2018.dp_dom_1718 set peso_pre = 35.8227272727273, pop_proj = 164723 where A01setor = 'Valparaíso de Goiás';

update pmad2018.dp_mor_1718 set D07 = 1 where A01nficha = 4635 and D05 = 19;

/*Passo 10 - Exclusão de DOMICÍLIOS por problemas na tabela de MORADORES*/

/*Exclusões feitas na 6876 e 9896 por não ter morador na base de morador.*/
/*Exclusão feita na 4733 por ausência de responsável pelo domicílio.*/
delete from pmad2018.dp_dom_1718 
where A01nficha in (6876,9896,4733,4778,1490,4259,9752);

/*Exclusão de domicílio com pessoas sem */
delete from pmad2018.dp_mor_1718
where A01nficha in (6876,9896,4733,4778,1490,4259,9752);

/*Passo 11 - Correções na tabela de DOMICÍLIOS*/

/*Regra para corrigir problema de domicílio com o número de cômodos inferior a soma do número de banheiro com dormitório*/
update pmad2018.dp_dom_1718
set B07 = B08 + B09
where B08 + B09 > B07;

/*Domicílios com valor zero em Aluguel devem receber 88888 - Não sabe*/
update pmad2018.dp_dom_1718 set B05 = 88888 where B05 = 0;

/*Domicílios com resposta em C02 mas sem veículo em C01*/
update pmad2018.dp_dom_1718
set C021 = 0, C022 = 0, C023 = 0
where A01nficha in (4181,5005,6507,2269,6041,5132,1275,4141,9746,1453);

/*Domicílios com com veículo mas sem informar local de emplacamento*/
update pmad2018.dp_dom_1718
set C021 = C011+C012+C013+C014+C015+C016+C019
where A01nficha in (183, 752, 981, 1143, 1181, 1188, 1195, 1196, 1248, 1266, 1313, 1325, 1585, 1686, 
1707, 1742, 2048, 3318, 3497, 3719, 3755, 3787, 3940, 4045, 4295, 4310, 4329, 4334, 4335, 4656, 4674, 
4725, 4970, 5046, 5298, 5635, 5856, 5901, 5935, 5973, 6410, 6458, 6742, 7389, 7482, 8431, 8615, 8922, 
9582, 9877, 10106, 10109, 10623);

/*Domicílios com nº de veículos diferente de nº de emplacados com resposta apenas em C02.1*/
update pmad2018.dp_dom_1718
set C021 = C011+C012+C013+C014+C015+C016+C019
where A01nficha in (54, 56, 204, 548, 584, 965, 1018, 1070, 1097, 1112, 1149, 1178, 1201, 1211, 1237, 1322, 1324, 1332, 1358, 1372, 1408, 1413, 1528, 1538, 1961, 
1989, 1999, 2020, 2053, 2088, 2175, 2182, 2188, 2211, 2258, 2367, 2462, 2505, 2546, 2663, 2683, 2688, 2732, 2737, 2739, 2741, 2749, 2755, 2806, 
2899, 2974, 2989, 3002, 3209, 3249, 3673, 3685, 3750, 3818, 4162, 4214, 4217, 4235, 4237, 4247, 4261, 4279, 4301, 4305, 4315, 4319, 4325, 4336, 
4342, 4350, 4374, 4482, 4506, 4649, 4711, 4715, 4719, 4749, 4753, 4756, 4759, 4797, 4799, 4819, 4829, 4837, 4839, 4843, 4844, 4846, 4850, 4856, 
4860, 4862, 4865, 4866, 4868, 4875, 4878, 4897, 4927, 4929, 4936, 4945, 4949, 4957, 4959, 4962, 4975, 4982, 4987, 4989, 5012, 5014, 5021, 5031, 
5032, 5039, 5047, 5090, 5174, 5231, 5283, 5299, 5300, 5388, 5465, 5488, 5650, 5743, 5759, 5847, 6017, 6050, 6070, 6115, 6146, 6155, 6183, 6195, 
6238, 6256, 6277, 6287, 6302, 6323, 6390, 6405, 6424, 6447, 6450, 6476, 6503, 6541, 6551, 6563, 6575, 6595, 6613, 6634, 6636, 6659, 6705, 6714, 
6717, 6741, 6751, 6765, 6792, 6800, 6807, 6810, 6841, 6844, 6846, 6858, 6969, 6983, 7041, 7437, 7594, 7826, 7837, 8094, 8793, 8855, 9438, 9579, 
9615, 9627, 9662, 9742, 9770, 9926, 9962, 10287, 63, 771, 2748, 4760, 4859, 5030, 6330, 6471, 6767, 6785, 1221, 4035, 4803, 5023, 5040, 5221, 435, 4355);

/*Domicílios com nº de veículos diferente de nº de emplacados com resposta apenas em C02.2*/
update pmad2018.dp_dom_1718
set C022 = C011+C012+C013+C014+C015+C016+C019
where A01nficha in (37, 49, 50, 98, 446, 733, 803, 1106, 1151, 1165, 1192, 1239, 1348, 1491, 1635, 1659, 1685, 1688, 1690, 1732, 1735, 
1782, 1811, 1813, 1827, 1833, 1903, 1909, 1932, 2001, 2002, 2046, 2097, 2156, 2158, 2162, 2166, 2167, 2227, 2229, 
2313, 2315, 2320, 2335, 2344, 2382, 2392, 2487, 2489, 2503, 2512, 2757, 3128, 3174, 3208, 3271, 3340, 3491, 3647, 
3699, 3706, 3722, 3771, 3852, 3938, 3968, 4147, 4177, 4226, 4332, 4364, 4522, 4728, 4770, 4849, 4881, 4943, 4988, 
5335, 5605, 5629, 5648, 5689, 5822, 5931, 5964, 6064, 6127, 6172, 6189, 6198, 6299, 6321, 6332, 6341, 6362, 6377, 
6391, 6420, 6452, 6558, 6601, 6683, 6726, 6753, 6762, 6782, 6828, 6832, 6890, 6926, 6942, 6949, 7008, 7014, 7025, 
7126, 7160, 7168, 7208, 7221, 7234, 7275, 7309, 7318, 7386, 7425, 7441, 7450, 7454, 7459, 7479, 7480, 7481, 7525, 
7542, 7590, 8127, 8230, 8658, 8667, 8672, 8874, 9137, 9203, 9244, 9257, 9342, 9347, 9351, 9358, 9368, 9496, 9521, 
9576, 9599, 9637, 9658, 9690, 9720, 9721, 9724, 9760, 9786, 9791, 9801, 9895, 9909, 9915, 9925, 9973, 10049, 10096, 
10149, 10439, 10562, 294, 376, 858, 1179, 1840, 2011, 3672, 4979, 6065, 6797, 8816, 9035, 9407, 9452, 9461, 10236, 10253, 2042);

/*Domicílio com mais veículos do que placas informadas*/
update pmad2018.dp_dom_1718
set C021 = (C011+C012+C013+C014+C015+C016+C019)-(C021+C022+C023) + C021
where A01nficha in (2553, 7613, 2384, 7013, 9575, 9894, 1008, 1965, 3506, 6814, 10353, 2937, 4884);

/*Domicílios com nº de veículos diferente de nº de emplacados com resposta apenas em C02.3*/
update pmad2018.dp_dom_1718
set C023 = C011+C012+C013+C014+C015+C016+C019
where A01nficha in (1126, 1416, 1532, 1739, 2342, 2762, 2878, 3004, 3892, 4060, 4239, 5049, 6199, 6245, 6249, 7043);

/*Domicílio com mais veículos do que placas informadas*/
update pmad2018.dp_dom_1718 set C022= 3 where A01nficha = 7167;

update pmad2018.dp_dom_1718 set C022= 2 where A01nficha = 3786;


/*Domicílio com mais veículos do que placas informadas*/
update pmad2018.dp_dom_1718
set C022=0
where A01nficha in (5358, 6108, 6217, 435);

/*Domicílio com mensalista sem identificação de mensalista em moradores*/
update pmad2018.dp_dom_1718
set C051=0
where A01nficha in (1147, 1746, 2293, 4513, 5030, 5130, 5429, 8391, 8862, 8995, 9088, 9154);

/*Domicílio sem mensalista com identificação de mensalista em moradores*/
update pmad2018.dp_dom_1718
set C051=1
where A01nficha in (1563, 1677, 1726, 1773, 3895, 4203, 5366, 5784, 6561, 6924, 9356, 8113);

/*Passo 12 - Correções na tabela de MORADORES*/

/*Estado Civil aplica-se apenas para pessoas com 14 ou mais*/
update pmad2018.dp_mor_1718 set D07 = 99 where D05 < 14;

/*Dados sobre violência aplica-se apenas para pessoas com 16 ou mais*/
update pmad2018.dp_mor_1718 set D20 = 99, D21 = 99, D22 = 99 where D05 < 16;

/*Dados sobre violência aplica-se apenas para pessoas com 16 ou mais*/
update pmad2018.dp_mor_1718 set E06 = 99, E07 = 99, E08 = 99, E09 = 99, E10 = 99, E11 = 99, E12 = 99999, E13 = 99999, E14 = 99, E15 = 99 where D05 < 10;

/*Pessoa menor de 14 anos não se aplica*/
update pmad2018.dp_mor_1718 set D07 = 99 where A01nficha = 	8007 and D01 = 25929;

/*Pessoas com marcação diferente*/
update pmad2018.dp_mor_1718 set D11 = 99 where A01nficha = 	1029 and D01 = 3374;

update pmad2018.dp_mor_1718 set D11 = 99 where A01nficha = 	2140 and D01 = 7113;

update pmad2018.dp_mor_1718 set D11 = 99 where A01nficha = 	2543 and D01 = 8474;

update pmad2018.dp_mor_1718 set D11 = 99 where A01nficha = 	3878 and D01 = 12569;

/*Remarcar para 888 todos com marcação 999 em D15*/
update pmad2018.dp_mor_1718 set D15 = 888 where D15 = 999;

/*Pessoas com tempo de moradia no município maior que a idade, recebeu valor igual a idade*/
update pmad2018.dp_mor_1718 set D15 = D05 where D15 <> 888 and D05 < D15;

/*Pessoas que frequentam escola com marcação de 6 a 14 anos fora da escola ou Não se aplica em E03, marcar 88*/
update pmad2018.dp_mor_1718 set E03 = 88 where E01 in (1,2,3,4) and E03 in (20,99);

/*Padronizar para que todos os que estudam à distância não respondam local onde estuda*/
update pmad2018.dp_mor_1718 set E02 = 99 where E01 in (3,4);

/*Padronizar para que todos os que estudam à distância não respondam local onde estuda*/
update pmad2018.dp_mor_1718 set E02 = 99 where E01 in (3,4);

/*Pessoas com fundamental completo não necessitam informar a série*/
update pmad2018.dp_mor_1718 set E04 = 99 where E03 = 12;

/*Pessoa com ensino fundamental incompleto não deveria ser Não se aplica*/
update pmad2018.dp_mor_1718 set E04 = 88 where E03 = 11 and E04 = 99;

/*Pessoa com ensino médio completo não necessita de série*/
update pmad2018.dp_mor_1718 set E04 = 99 where E03 = 14;

/*Pessoa com ensino médio incompleto deveria responder a série*/
update pmad2018.dp_mor_1718 set E04 = 88 where E03 = 13 and E04 = 99;

/*Pessoa com ensino fundamental incompleto não deveria ser Não se aplica*/
update pmad2018.dp_mor_1718 set E04 = 88 where E03 = 15 and E04 = 99;

/*Pessoa Não precisa coletar a série nestes*/
update pmad2018.dp_mor_1718 set E04 = 99 where E03 in (1,2,3,4,5,6,7,8,9,10,14,16)

/*Pessoa que deveria ter respondido série mas apareceu Não se aplica*/
update pmad2018.dp_mor_1718 set E04 = 88 where E03 in (17,18,19) and E04 = 99;

/*Pessoas que não frequentam escola com idade entre 6 e 14 anos devem receber marcação 20 em E03*/
update pmad2018.dp_mor_1718 set E03 = 20 where D05 between 6 and 14 and E01 = 0 and E03 = 99;

/*Pessoas que não frequentam escola com idade acima de 14 anos devem receber marcação 88 em E03*/
update pmad2018.dp_mor_1718 set E03 = 88 where D05 > 14 and E01 = 0 and E03 = 99;

/*Pessoa com 11 anos não pode estar no EJA*/
update pmad2018.dp_mor_1718 set E03=11, E04=88 where A01nficha = 4750 and D01 = 15511;

/*Pessoa com 7 anos não pode ter superior completo*/
update pmad2018.dp_mor_1718 set E03=11, E04=4 where A01nficha = 2061 and D01 = 6854;

/*Pessoa com 11 anos não pode ter especialização*/
update pmad2018.dp_mor_1718 set E03=11 where A01nficha = 4187 and D01 = 13616;

/*Pessoa com 11 anos não pode ter especialização*/
update pmad2018.dp_mor_1718 set E03=13 where A01nficha = 7354 and D01 = 23879;

/*Pessoas com 18 e 19 anos não possuem idade para estar no mestrado. Remarcar com superior incompleto*/
update pmad2018.dp_mor_1718 set E03 = 15, E04 = 88 where A01nficha in (2475,4232,4832,4965) and D01 in (8238,13769,15764,16185);

/*Pessoas com menos de 14 anos não podem estar fazendo Preparatório para concurso/vestibular/Enem/PRONATEC*/
update pmad2018.dp_mor_1718 set E05 = 6 where D05 < 16 and E05 between 1 and 4;

/*Padronização da resposta*/
update pmad2018.dp_mor_1718 set E05 = 0 where E05=99;

/*Padronização da resposta*/
update pmad2018.dp_mor_1718 set E05 = 0 where D05 < 16 and E05 between 1 and 4;

/*Pessoa com 10 anos marcadocom aposentado deve receber 0*/
update pmad2018.dp_mor_1718 set E06 = 0 where A01nficha = 7870 and D01 = 25557;

/*Adequação de Atividade Pública e Posição na Ocupação*/
update pmad2018.dp_mor_1718 set E08 = 88 where E07 in (5,6,7,8,18,19) and E08 in (2,6,7,8,9,10,14);

/*Pessoas que trabalham em municípios sem cobertura do metrô mas informaram que vão trabalhar de metrô*/
update pmad2018.dp_mor_1718 set E11 = 12 where E09 between 41 and 55 and E11 = 8;

/*Pessoas que trabalham em municípios sem cobertura do metrô mas informaram que vão trabalhar de metrô*/
update pmad2018.dp_mor_1718 set E11 = 12 where D05 >= 10 and E09 between 41 and 55 and E11 = 8;

/*Pessoas com trabalho voluntário e o rendimento informado em local indevido*/
update pmad2018.dp_mor_1718 set E13 = 800 where A01nficha in (8581) and D01 in (27739);

update pmad2018.dp_mor_1718 set E13 = 5000 where A01nficha in (733) and D01 in (2447);

/*Pessoas sem informação na base original (informação em branco) para esta informação*/
update pmad2018.dp_mor_1718 set E07 = 99, E08 = 99, E09 = 99, E10 = 99, E11 = 99, E12 = 99999 where E06 in (8,88);

/*Pessoas com marcação de trabalho voluntário devem ter Não se aplica em */
update pmad2018.dp_mor_1718 set E07 = 99, E08 = 99, E09 = 99, E10 = 99, E11 = 99, E12 = 99999 where E06 = 8;

/*Pessoas com marcação de trabalho voluntário devem ter Não se aplica em */
update pmad2018.dp_mor_1718 set E12 = 99999 where E06 in (0,2,4,5,6,7,8);

/*Pessoas que nasceram em Goiás recebem 9999 em ano de chegada*/
update pmad2018.dp_mor_1718 set D12 = 9999 where D10 = 9;

/*Pessoas que não nasceram em em Goiás e não informou ano de chegada preencher com 8888*/
/*update pmad2018.dp_mor_1718 set D12 = 8888 where D10 <> 9 and D12 = 9999;*/

/*Pessoa que não tem religião não se aplica à frequência religiosa*/
update pmad2018.dp_mor_1718 set D09 = 99 where D08 = 0;

/*Pessoa que não tem religião não se aplica à frequência religiosa*/
update pmad2018.dp_mor_1718 set D21 = 99, D22 = 99 where D20 in (0,88);

/*Pessoa que não sabe se estuda responde não se aplica*/
update pmad2018.dp_mor_1718 set E02 = 99 where E01 = 88;

/*Pessoa que frequentam escola, estão no maternal ou creche mas com idade incompatível*/
update pmad2018.dp_mor_1718 set E03 = 6 where E01 = 1 and E03 = 5 and D05 in (4,5);

/*Pessoa que frequentam escola e creche mas com idade incompatível*/
update pmad2018.dp_mor_1718 set E03 = 11, E04 = 88 where E01 = 1 and E03 = 5 and D05 in (6,7);

/*Pessoa que frequentam escola e creche mas com idade incompatível*/
update pmad2018.dp_mor_1718 set E03 = 5, E04 = 99 where E01 = 1 and E03 = 11 and D05 < 4;

/*Pessoa que frequentam escola e creche mas com idade incompatível*/
update pmad2018.dp_mor_1718 set E03 = 6, E04 = 99 where E01 = 1 and E03 = 11 and D05 in (4,5);

/*Pessoas com idade abaixo dos 16 anos não contribuem para o INSS*/
update pmad2018.dp_mor_1718 set E14 = 99 where D05 < 14;

/*Pessoa que não trabalha não contribui para a previdência*/
update pmad2018.dp_mor_1718 set E14 = 99 where E06 in (0,2);












 /*Ajustar posição no domicílio por erro de dois chefes ou dois conjuges*/
update pmad2018.dp_mor_1718 set D02=6 where A01nficha = 4941 and D01 = 16104;
update pmad2018.dp_mor_1718 set D02=6 where A01nficha = 1477 and D01 = 4791;
update pmad2018.dp_mor_1718 set D02=4 where A01nficha = 1678 and D01 = 5460;
update pmad2018.dp_mor_1718 set D02=4 where A01nficha = 4054 and D01 = 13153;
update pmad2018.dp_mor_1718 set D02=4 where A01nficha = 4515 and D01 = 14698;

 /*Marcar D03 = 1 por incompatibilidade entre posição e sexo da pessoa*/
update pmad2018.dp_mor_1718 set D03 = 1 where A01nficha = 1034 and D01 = 3389;
update pmad2018.dp_mor_1718 set D03 = 1 where A01nficha = 1095 and D01 = 3571;
update pmad2018.dp_mor_1718 set D03 = 1 where A01nficha = 1298 and D01 = 4247;
update pmad2018.dp_mor_1718 set D03 = 1 where A01nficha = 1406 and D01 = 4549;
update pmad2018.dp_mor_1718 set D03 = 1 where A01nficha = 1444 and D01 = 4673;
update pmad2018.dp_mor_1718 set D03 = 1 where A01nficha = 1455 and D01 = 4710;
update pmad2018.dp_mor_1718 set D03 = 1 where A01nficha = 1935 and D01 = 6393;
update pmad2018.dp_mor_1718 set D03 = 1 where A01nficha = 1981 and D01 = 6562;
update pmad2018.dp_mor_1718 set D03 = 1 where A01nficha = 2046 and D01 = 6803;
update pmad2018.dp_mor_1718 set D03 = 1 where A01nficha = 2277 and D01 = 7617;
update pmad2018.dp_mor_1718 set D03 = 1 where A01nficha = 2300 and D01 = 7684;
update pmad2018.dp_mor_1718 set D03 = 1 where A01nficha = 4207 and D01 = 13691;
update pmad2018.dp_mor_1718 set D03 = 1 where A01nficha = 4318 and D01 = 14050;
update pmad2018.dp_mor_1718 set D03 = 1 where A01nficha = 4412 and D01 = 14349;
update pmad2018.dp_mor_1718 set D03 = 1 where A01nficha = 4689 and D01 = 15320;
update pmad2018.dp_mor_1718 set D03 = 1 where A01nficha = 4830 and D01 = 15761;
update pmad2018.dp_mor_1718 set D03 = 1 where A01nficha = 4872 and D01 = 15880;
/*update pmad2018.dp_mor_1718 set D03 = 1 where A01nficha = 4941 and D01 = 16105;*/
update pmad2018.dp_mor_1718 set D03 = 1 where A01nficha = 5087 and D01 = 16580;
update pmad2018.dp_mor_1718 set D03 = 1 where A01nficha = 5205 and D01 = 16982;
update pmad2018.dp_mor_1718 set D03 = 1 where A01nficha = 5212 and D01 = 17012;
update pmad2018.dp_mor_1718 set D03 = 1 where A01nficha = 6114 and D01 = 19938;
update pmad2018.dp_mor_1718 set D03 = 1 where A01nficha = 6266 and D01 = 20343;
update pmad2018.dp_mor_1718 set D03 = 1 where A01nficha = 6292 and D01 = 20413;
update pmad2018.dp_mor_1718 set D03 = 1 where A01nficha = 6375 and D01 = 20627;
update pmad2018.dp_mor_1718 set D03 = 1 where A01nficha = 6423 and D01 = 20759;
update pmad2018.dp_mor_1718 set D03 = 1 where A01nficha = 6925 and D01 = 22498;
update pmad2018.dp_mor_1718 set D03 = 1 where A01nficha = 7074 and D01 = 22959;
update pmad2018.dp_mor_1718 set D03 = 1 where A01nficha = 7297 and D01 = 23703;
update pmad2018.dp_mor_1718 set D03 = 1 where A01nficha = 7355 and D01 = 23883;
update pmad2018.dp_mor_1718 set D03 = 1 where A01nficha = 7401 and D01 = 24037;
update pmad2018.dp_mor_1718 set D03 = 1 where A01nficha = 7441 and D01 = 24164;
update pmad2018.dp_mor_1718 set D03 = 1 where A01nficha = 7531 and D01 = 24476;
update pmad2018.dp_mor_1718 set D03 = 1 where A01nficha = 9817 and D01 = 31729;

 /*Marcar D03 = 2 por incompatibilidade entre posição e sexo da pessoa*/
update pmad2018.dp_mor_1718 set D03 = 2 where A01nficha = 1063 and D01 = 3487;
update pmad2018.dp_mor_1718 set D03 = 2 where A01nficha = 1073 and D01 = 3515;
update pmad2018.dp_mor_1718 set D03 = 2 where A01nficha = 1109 and D01 = 3613;
update pmad2018.dp_mor_1718 set D03 = 2 where A01nficha = 1236 and D01 = 4035;
update pmad2018.dp_mor_1718 set D03 = 2 where A01nficha = 1399 and D01 = 4525;
update pmad2018.dp_mor_1718 set D03 = 2 where A01nficha = 1878 and D01 = 6154;
update pmad2018.dp_mor_1718 set D03 = 2 where A01nficha = 4000 and D01 = 12982;
update pmad2018.dp_mor_1718 set D03 = 2 where A01nficha = 4183 and D01 = 13605;
update pmad2018.dp_mor_1718 set D03 = 2 where A01nficha = 4337 and D01 = 14107;
update pmad2018.dp_mor_1718 set D03 = 2 where A01nficha = 4656 and D01 = 15210;
update pmad2018.dp_mor_1718 set D03 = 2 where A01nficha = 5379 and D01 = 17563;
update pmad2018.dp_mor_1718 set D03 = 2 where A01nficha = 5540 and D01 = 18052;
update pmad2018.dp_mor_1718 set D03 = 2 where A01nficha = 5584 and D01 = 18198;
update pmad2018.dp_mor_1718 set D03 = 2 where A01nficha = 5989 and D01 = 19523;
update pmad2018.dp_mor_1718 set D03 = 2 where A01nficha = 6065 and D01 = 19764;
update pmad2018.dp_mor_1718 set D03 = 2 where A01nficha = 6503 and D01 = 21008;
update pmad2018.dp_mor_1718 set D03 = 2 where A01nficha = 6761 and D01 = 21997;
update pmad2018.dp_mor_1718 set D03 = 2 where A01nficha = 6833 and D01 = 22230;
update pmad2018.dp_mor_1718 set D03 = 2 where A01nficha = 6949 and D01 = 22573;
update pmad2018.dp_mor_1718 set D03 = 2 where A01nficha = 6962 and D01 = 22614;
update pmad2018.dp_mor_1718 set D03 = 2 where A01nficha = 6984 and D01 = 22674;
update pmad2018.dp_mor_1718 set D03 = 2 where A01nficha = 7023 and D01 = 22800;
update pmad2018.dp_mor_1718 set D03 = 2 where A01nficha = 7129 and D01 = 23119;
update pmad2018.dp_mor_1718 set D03 = 2 where A01nficha = 7164 and D01 = 23254;
update pmad2018.dp_mor_1718 set D03 = 2 where A01nficha = 7289 and D01 = 23681;
update pmad2018.dp_mor_1718 set D03 = 2 where A01nficha = 7327 and D01 = 23808;
update pmad2018.dp_mor_1718 set D03 = 2 where A01nficha = 7330 and D01 = 23818;
update pmad2018.dp_mor_1718 set D03 = 2 where A01nficha = 7357 and D01 = 23887;
update pmad2018.dp_mor_1718 set D03 = 2 where A01nficha = 7375 and D01 = 23943;
update pmad2018.dp_mor_1718 set D03 = 2 where A01nficha = 7510 and D01 = 24407;
update pmad2018.dp_mor_1718 set D03 = 2 where A01nficha = 9440 and D01 = 30542;
update pmad2018.dp_mor_1718 set D03 = 2 where A01nficha = 9518 and D01 = 30809;

 /*Marcar D03 = 1 por incompatibilidade entre posição e sexo da pessoa*/
update pmad2018.dp_mor_1718 set D03 = 1 where A01nficha = 978 and D01 = 3262;
update pmad2018.dp_mor_1718 set D03 = 1 where A01nficha = 1148 and D01 = 3750;
update pmad2018.dp_mor_1718 set D03 = 1 where A01nficha = 1360 and D01 = 4428;
update pmad2018.dp_mor_1718 set D03 = 1 where A01nficha = 1428 and D01 = 4615;
update pmad2018.dp_mor_1718 set D03 = 1 where A01nficha = 1514 and D01 = 4922;
update pmad2018.dp_mor_1718 set D03 = 1 where A01nficha = 1528 and D01 = 4976;
update pmad2018.dp_mor_1718 set D03 = 1 where A01nficha = 1539 and D01 = 5007;
update pmad2018.dp_mor_1718 set D03 = 1 where A01nficha = 1715 and D01 = 5589;
update pmad2018.dp_mor_1718 set D03 = 1 where A01nficha = 4778 and D01 = 15601;
update pmad2018.dp_mor_1718 set D03 = 1 where A01nficha = 6777 and D01 = 22038;
update pmad2018.dp_mor_1718 set D03 = 1 where A01nficha = 9948 and D01 = 32143;

 /*Marcar D03 = 2 por incompatibilidade entre posição e sexo da pessoa*/
update pmad2018.dp_mor_1718 set D03 = 2 where A01nficha = 1029 and D01 = 3374;
update pmad2018.dp_mor_1718 set D03 = 2 where A01nficha = 1668 and D01 = 5430;

/*Passo 13 - Correção na coluna A01npessoas*/

IF OBJECT_ID('pmad2018.tmp', 'U') IS NOT NULL DROP TABLE pmad2018.tmp; 

select 
	t1.referencia, t1.FATOR_MUN, t1.municipio, t1.A01setor, t1.A01nficha_ant, t1.A01nficha, t1.setorcensitario, t2.A01npessoas, t1.datavisita, 
	t1.B01, t1.B02, t1.B03, t1.B04, t1.B05, t1.B06, t1.B07, t1.B08, t1.B09, t1.B10, t1.B11, t1.B12, t1.B13, t1.B14, t1.B15, t1.B16, t1.B17, 
	t1.B18, t1.B191, t1.B192, t1.B193, t1.B194, t1.B195, t1.B201, t1.B202, t1.B203, t1.B204, t1.B205, t1.B206, t1.B211, t1.B212, t1.B213, t1.B214, 
	t1.B215, t1.B216, t1.B217, t1.B218, t1.B22, t1.B231, t1.B232, t1.B233, t1.B234, t1.C011, t1.C012, t1.C013, t1.C014, t1.C015, t1.C016, t1.C017, 
	t1.C018, t1.C019, t1.C021, t1.C022, t1.C023, t1.C031, t1.C032, t1.C033, t1.C034, t1.C0401, t1.C0402, t1.C0403, t1.C0404, t1.C0405, t1.C0406, 
	t1.C0407, t1.C0408, t1.C0409, t1.C0410, t1.C0411, t1.C0412, t1.C0413, t1.C0414, t1.C0415, t1.C0416, t1.C0417, t1.C0418, t1.C0419, t1.C0420, 
	t1.C0421, t1.C0422, t1.C051, t1.C052, t1.C053, t1.C061, t1.C062, t1.C063, t1.C064, t1.C065, t1.C066, t1.C07, t1.C08, t1.C09, t1.C101, t1.C102, 
	t1.C103, t1.C104, t1.peso_pre, t1.pop_proj 
into pmad2018.tmp 
from pmad2018.dp_dom_1718 t1
left join (select A01nficha, count(1) as A01npessoas from pmad2018.dp_mor_1718 group by A01nficha) t2
on t1.A01nficha = t2.A01nficha;

IF OBJECT_ID('pmad2018.dp_dom_1718', 'U') IS NOT NULL DROP TABLE pmad2018.dp_dom_1718; 

select
 *
into pmad2018.dp_dom_1718
from pmad2018.tmp;

IF OBJECT_ID('pmad2018.tmp', 'U') IS NOT NULL DROP TABLE pmad2018.tmp; 

/*Domicílios com rede geral mas que respondeu não ter rede geral na B12*/
update pmad2018.dp_dom_1718 set B12 = 88 where B12 = 3 and B10 = 1;

/*Domicílios com rede geral mas que respondeu não ter rede geral na B13*/
update pmad2018.dp_dom_1718 set B13 = 88 where B13 = 4 and B10 = 1;

/*Domicílios com rede geral mas que respondeu não ter rede geral na B15*/
update pmad2018.dp_dom_1718 set B15 = 88 where B15 = 3 and B14 = 1;

/*Domicílios com rede geral mas que respondeu não ter rede geral na B16*/
update pmad2018.dp_dom_1718 set B16 = 88 where B16 = 4 and B14 = 1;

IF OBJECT_ID('pmad2018.tmp', 'U') IS NOT NULL DROP TABLE pmad2018.tmp; 

IF OBJECT_ID('pmad2018.tmp2', 'U') IS NOT NULL DROP TABLE pmad2018.tmp2; 

grant select on pmad2018.dp_mor_1718 to [36692], [11711];
