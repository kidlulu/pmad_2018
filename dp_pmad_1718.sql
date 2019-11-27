use db_codeplan;

IF OBJECT_ID('pmad2018.dp_dom_1718', 'U') IS NOT NULL DROP TABLE pmad2018.dp_dom_1718; 

select
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
  d1.NR_DOM_FICHA as A01nficha,
  d1.SETOR_CENSITÁRIO as setorcensitario,
  d1.QT_DOM_MORADORES as A01nPessoas,
  d1.DT_DOM_ANO as datavisita,
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
  d1.TP_DOM_ECONOMIZAR_AGUA as B12,
  d1.TP_DOM_FALTA_AGUA as B13,
  d1.TP_DOM_ABAST_ENERGIA as B14,
  d1.TP_DOM_ECONOMIZAR_ENERGIA as B15,
  d1.TP_DOM_FALTA_ENERGIA as B16,
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
       else d1.ST_DOM_SERV_IMPORT_BANCO
  end as C09,
  case when d1.ST_DOM_RECODAR_BANCO1 = 9 then 88
       else d1.ST_DOM_RECODAR_BANCO1
  end as C101,
  case when d1.ST_DOM_RECODAR_BANCO1 = 9 then 99
       else d1.ST_DOM_RECODAR_BANCO2
  end as C102,
  case when d1.ST_DOM_RECODAR_BANCO1 = 9 then 99
       when d1.ST_DOM_RECODAR_BANCO2 = 9 then 99
       else d1.ST_DOM_RECODAR_BANCO3
  end as C103,
  case when d1.ST_DOM_RECODAR_BANCO1 = 9 then 99
       when d1.ST_DOM_RECODAR_BANCO2 = 9 then 99
       when d1.ST_DOM_RECODAR_BANCO3 = 9 then 99
       else d1.ST_DOM_RECODAR_BANCO4
  end as C104
into pmad2018.dp_dom_1718
from pmad2018.dom2017 d1;

IF OBJECT_ID('pmad2018.dp_mor_1718', 'U') IS NOT NULL DROP TABLE pmad2018.dp_mor_1718; 

select
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
  m1.NR_DOM_FICHA as A01nficha,
  m1.QT_DOM_MORADORES as A01nPessoas,
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
  case when m1.QT_MOR_TEMPO_MUNICIPIO in (8,9) then 888
       else m1.QT_MOR_TEMPO_MUNICIPIO 
  end as D15,
  m1.TP_MOR_ACESSO_INT as D16,
  m1.TP_MOR_PLANO_SAUDE as D17,
  m1.ST_MOR_HOSPITAL as D18,
  m1.ST_MOR_POSTO_SAUDE as D19,
  m1.TP_MOR_VIOLENCIA as D20,
  case when m1.LC_MOR_VIOLENCIA = 8 then 88
       when m1.LC_MOR_VIOLENCIA = 9 then 99
       else m1.LC_MOR_VIOLENCIA
  end as D21,
  case when m1.TP_MOR_REGISTROU_QUEIXA in (6,8) then 88
       when m1.TP_MOR_REGISTROU_QUEIXA in (0,9) then 99
       else m1.TP_MOR_REGISTROU_QUEIXA
  end as D22,
  m1.FQ_MOR_ESCOLA as E01,
  case when m1.LC_MOR_ESTUDA = 0 then 99 else m1.LC_MOR_ESTUDA end as E02,
  m1.TP_MOR_NIVEL_ESCOLARIDADE as E03,
  case when m1.TP_MOR_SERIE_CONCLUIDA = 0 then 99 else m1.TP_MOR_SERIE_CONCLUIDA end as E04,
  m1.TP_MOR_OUTROS_CURSOS as E05,
  case when m1.ST_MOR_SITUACAO_ATIVIDADE = 9 then 99 else m1.ST_MOR_SITUACAO_ATIVIDADE end as E06,
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
  case when m1.TP_MOR_PREVIDENCIA in (0,9) then 99
       when m1.TP_MOR_PREVIDENCIA = 8 then 88
       else m1.TP_MOR_PREVIDENCIA
  end as E14,
  m1.LC_MOR_SER_BANCARIOS as E15
into pmad2018.dp_mor_1718
from pmad2018.mora2017 m1;