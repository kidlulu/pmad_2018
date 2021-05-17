* Encoding: windows-1252.
GET DATA
    /TYPE=ODBC
    /CONNECT='DSN=DB_CODEPLAN;UID=35866;PWD=7u,I+H+A*y/D/~!R#,$,--;APP=IBM SPSS Products: '+
    'Statistics Common;WSID=320CDL415;DATABASE=DB_CODEPLAN'
    /SQL=
 " select " 
 " d.referencia, " 
 " case when trim(d.municipio) = '�guas Lindas de Goi�s' then 41 " 
 "      when trim(d.municipio) = 'Alex�nia' then 42 " 
 "      when trim(d.municipio) = 'Cidade Ocidental' then 43 " 
 "      when trim(d.municipio) = 'Cocalzinho de Goi�s' then 45 " 
 "      when trim(d.municipio) = 'Cristalina' then 44 " 
 "      when trim(d.municipio) = 'Formosa' then 46 " 
 "      when trim(d.municipio) = 'Luzi�nia' then 47 " 
 "      when trim(d.municipio) = 'Novo Gama' then 48 " 
 "      when trim(d.municipio) = 'Padre Bernardo' then 49 " 
 "      when trim(d.municipio) = 'Planaltina' then 50 " 
 "      when trim(d.municipio) = 'Santo Ant�nio do Descoberto' then 51 " 
 "      when trim(d.municipio) = 'Valpara�so de Goi�s' then 52 " 
 "      else null " 
 " end as municipio, " 
 " case when trim(d.A01setor) = '�guas Lindas de Goi�s' then 1 " 
 "      when trim(d.A01setor) = 'Cocalzinho de Goi�s: Girassol/Edil�ndia' then 2 " 
 "      when trim(d.A01setor) = 'Cocalzinho de Goi�s: Sede' then 3 " 
 "      when trim(d.A01setor) = 'Padre Bernardo: Sede' then 4 " 
 "      when trim(d.A01setor) = 'Padre Bernardo: Monte Alto' then 5 " 
 "      when trim(d.A01setor) = 'Planaltina' then 6 " 
 "      when trim(d.A01setor) = 'Valpara�so de Goi�s' then 7 " 
 "      when trim(d.A01setor) = 'Alex�nia' then 8 " 
 "      when trim(d.A01setor) = 'Cristalina: Sede' then 9 " 
 "      when trim(d.A01setor) = 'Cristalina: Campos Lindos/Maraj�' then 10 " 
 "      when trim(d.A01setor) = 'Formosa' then 11 " 
 "      when trim(d.A01setor) = 'Luzi�nia: Sede' then 12 " 
 "      when trim(d.A01setor) = 'Luzi�nia: Jardim Ing�' then 13 " 
 "      when trim(d.A01setor) = 'Novo Gama' then 14 " 
 "      when trim(d.A01setor) = 'Cidade Ocidental: Sede' then 15 " 
 "      when trim(d.A01setor) = 'Cidade Ocidental: Jardim ABC' then 16 " 
 "      when trim(d.A01setor) = 'Santo Ant�nio do Descoberto' then 17 " 
 "      else null " 
 " end as A01setor, " 
 " d.A01nficha, " 
 " m.A01nPessoas as A01npessoas, " 
 " d.datavisita, " 
 " d.B01, " 
 " d.B02, " 
 " d.B03, " 
 " d.B04, " 
 " d.B05, " 
 " d.B06, " 
 " d.B07, " 
 " d.B08, " 
 " d.B09, " 
 " d.B10, " 
 " d.B11, " 
 " d.B12, " 
 " d.B13, " 
 " d.B14, " 
 " d.B15, " 
 " d.B16, " 
 " d.B17, " 
 " d.B18, " 
 " d.B191, " 
 " d.B192, " 
 " d.B193, " 
 " d.B194, " 
 " d.B195, " 
 " d.B201, " 
 " d.B202, " 
 " d.B203, " 
 " d.B204, " 
 " d.B205, " 
 " d.B206, " 
 " d.B211, " 
 " d.B212, " 
 " d.B213, " 
 " d.B214, " 
 " d.B215, " 
 " d.B216, " 
 " d.B217, " 
 " d.B218, " 
 " d.B22, " 
 " d.B231, " 
 " d.B232, " 
 " d.B233, " 
 " d.B234, " 
 " d.C011, " 
 " d.C012, " 
 " d.C013, " 
 " d.C014, " 
 " d.C015, " 
 " d.C016, " 
 " d.C017, " 
 " d.C018, " 
 " d.C019, " 
 " d.C021, " 
 " d.C022, " 
 " d.C023, " 
 " d.C031, " 
 " d.C032, " 
 " d.C033, " 
 " d.C034, " 
 " d.C0401, " 
 " d.C0402, " 
 " d.C0403, " 
 " d.C0404, " 
 " d.C0405, " 
 " d.C0406, " 
 " d.C0407, " 
 " d.C0408, " 
 " d.C0409, " 
 " d.C0410, " 
 " d.C0411, " 
 " d.C0412, " 
 " d.C0413, " 
 " d.C0414, " 
 " d.C0415, " 
 " d.C0416, " 
 " d.C0417, " 
 " d.C0418, " 
 " d.C0419, " 
 " d.C0420, " 
 " d.C0421, " 
 " d.C0422, " 
 " d.C051, " 
 " d.C052, " 
 " d.C053, " 
 " d.C061, " 
 " d.C062, " 
 " d.C063, " 
 " d.C064, " 
 " d.C065, " 
 " d.C066, " 
 " d.C07, " 
 " d.C08, " 
 " d.C09, " 
 " d.C101, " 
 " d.C102, " 
 " d.C103, " 
 " d.C104, " 
 " d.C0401_imput, " 
 " d.C0402_imput, " 
 " d.C0403_imput, " 
 " d.C0404_imput, " 
 " d.C0405_imput, " 
 " d.C0406_imput, " 
 " d.C0407_imput, " 
 " d.C0408_imput, " 
 " d.C0409_imput, " 
 " d.C0410_imput, " 
 " d.C0411_imput, " 
 " d.C0412_imput, " 
 " d.C0413_imput, " 
 " d.C0414_imput, " 
 " d.C0415_imput, " 
 " d.C0416_imput, " 
 " d.C0417_imput, " 
 " d.C0418_imput, " 
 " d.C0419_imput, " 
 " d.C0420_imput, " 
 " d.C0421_imput, " 
 " d.C0422_imput, " 
 " d.fator_mun as PESO, " 
 " d.peso_pre as INV_FRAC, " 
 " d.TOT_DOM as PROJ_DOM " 
 " from pmad2018.dp_dom_1718_imput d, " 
 " (select  " 
 "   A01nficha , " 
 "   max(A01npessoas) as A01npessoas " 
 "  from pmad2018.dp_mor_1718 " 
 "  group by A01nficha) m " 
 " where d.A01nficha = m.A01nficha " 
    /ASSUMEDSTRWIDTH=255.
CACHE.
EXECUTE.
variable labels referencia "Ano da pesquisa".
variable labels municipio "Munic�pio pesquisado".
variable labels A01setor "Setor Pesquisado".
variable labels A01nficha "N�mero da ficha".
variable labels A01npessoas "Qtd. pessoas no domic�lio".
variable labels datavisita "Data da Entrevista".
variable labels B01 "Esp�cie do domic�lio".
variable labels B02 "Tipo do seu domic�lio".
variable labels B03 "Qual a situa��o do seu domic�lio?".
variable labels B04 "Se o im�vel for pr�prio em aquisi��o, qual o valor mensal pago ou que deveria ser pago da �ltima presta��o?".
variable labels B05 "Se o im�vel for alugado qual o �ltimo valor do aluguel pago ou que deveria ser pago?".
variable labels B06 "Condi��o Legal do Im�vel".
variable labels B07 "Quantos c�modos tem este domic�lio?".
variable labels B08 "Quantos c�modos est�o servindo permanentemente de dormit�rios neste domic�lio?".
variable labels B09 "Quantos banheiros e/ou sanit�rios t�m este domic�lio?".
variable labels B10 "Como � feito o abastecimento de �gua neste domic�lio?".
variable labels B11 "Consumo de �gua pot�vel".
variable labels B12 "Pratica a��es para fins de economizar �gua?".
variable labels B13 "Falta �gua?".
variable labels B14 "Como este domic�lio � abastecido por energia el�trica?".
variable labels B15 "Pratica a��es para fins de economizar Energia?".
variable labels B16 "Falta Energia?".
variable labels B17 "Esgotamento Sanit�rio?".
variable labels B18 "Coleta de Lixo?".
variable labels B191 "Rua asfaltada".
variable labels B192 "Cal�ada".
variable labels B193 "Meio Fio".
variable labels B194 "Ilumina��o p�blica".
variable labels B195 "Rede de �gua pluvial".
variable labels B201 "Eros�o".
variable labels B202 "�rea em declive".
variable labels B203 "Entulho".
variable labels B204 "Esgoto a c�u aberto".
variable labels B205 "�rea alagadas (chuva)".
variable labels B206 "Ruas esburacadas".
variable labels B211 "Tem ruas arborizadas".
variable labels B212 "Tem jardins/parques".
variable labels B213 "Tem �rea de preserva��o ambiental".
variable labels B214 "Tem nascente d'�gua".
variable labels B215 "Ciclovia".
variable labels B216 "Tem espa�o cultural".
variable labels B217 "Academia comunit�ria".
variable labels B218 "Tem ponto de �nibus".
variable labels B22 "Participa��o Social?".
variable labels B231 "Usa espa�os das escolas, extraclasse".
variable labels B232 "Participa de campanhas e reuni�es".
variable labels B233 "Conhece o projeto pedag�gico".
variable labels B234 "Conhece o Desempenho das escolas (IDEB/Prova Brasil)".
variable labels B234 "Conhece o Desempenho das escolas (IBEB/Prova Brasil)".
variable labels C011 "Autom�veis (fabricados at� 1999)".
variable labels C012 "Autom�veis (2000 at� 2009)".
variable labels C013 "Autom�veis (2010 ou mais)".
variable labels C014 "Utilit�rio".
variable labels C015 "Carga".
variable labels C016 "Motocicleta".
variable labels C017 "Bicicleta".
variable labels C018 "Carro�a".
variable labels C019 "Outros".
variable labels C021 "No munic�pio".
variable labels C022 "No DF".
variable labels C023 "Outro Local".
variable labels C031 "Internet (Wifi e ou 3G/4G)".
variable labels C032 "TV por Assinatura".
variable labels C033 "Assinatura de jornais".
variable labels C034 "Assinatura de revistas".
variable labels C0401 "Quantas Placas de energia/aquecedor solar?".
variable labels C0401_imput "Marcador de dados imputados".
variable labels C0402 "Quantos Ar condicionados?".
variable labels C0402_imput "Marcador de dados imputados".
variable labels C0403 "Quantos Circuladores de ar e/ou ventiladores?".
variable labels C0403_imput "Marcador de dados imputados".
variable labels C0404 "Quantos Fog�es?".
variable labels C0404_imput "Marcador de dados imputados".
variable labels C0405 "Quantos Fornos micro-ondas?".
variable labels C0405_imput "Marcador de dados imputados".
variable labels C0406 "Quantos Fornos el�tricos?".
variable labels C0406_imput "Marcador de dados imputados".
variable labels C0407 "Quantos Freezers?".
variable labels C0407_imput "Marcador de dados imputados".
variable labels C0408 "Quantas Geladeiras?".
variable labels C0408_imput "Marcador de dados imputados".
variable labels C0409 "Quantos Ipod e similares?".
variable labels C0409_imput "Marcador de dados imputados".
variable labels C0410 "Quantas M�quinas de lavar roupa?".
variable labels C0410_imput "Marcador de dados imputados".
variable labels C0411 "Quantas M�quinas de lavar lou�a?".
variable labels C0411_imput "Marcador de dados imputados".
variable labels C0412 "Quantas M�quinas de fotogr�fica digital?".
variable labels C0412_imput "Marcador de dados imputados".
variable labels C0413 "Quantos Microcomputadores/Desktop?".
variable labels C0413_imput "Marcador de dados imputados".
variable labels C0414 "Quantos Notebook/Laptop?".
variable labels C0414_imput "Marcador de dados imputados".
variable labels C0415 "Quantos Tablets/Ipad?".
variable labels C0415_imput "Marcador de dados imputados".
variable labels C0416 "Quantos Tanquinhos el�tricos?".
variable labels C0416_imput "Marcador de dados imputados".
variable labels C0417 "Quantos Telefones fixos?".
variable labels C0417_imput "Marcador de dados imputados".
variable labels C0418 "Quantos Telefones celulares pr�-pago?".
variable labels C0418_imput "Marcador de dados imputados".
variable labels C0419 "Quantos Telefones celulares p�s-pago?".
variable labels C0419_imput "Marcador de dados imputados".
variable labels C0420 "Quantos Televisores (tubo)?".
variable labels C0420_imput "Marcador de dados imputados".
variable labels C0421 "Quantos Televisores tela fina/plana".
variable labels C0421_imput "Marcador de dados imputados".
variable labels C0422 "Quantos Umidificadores?".
variable labels C0422_imput "Marcador de dados imputados".
variable labels C051 "Mensalista morador do domic�lio".
variable labels C052 "Mensalista n�o morador do domic�lio".
variable labels C053 "Diarista".
variable labels C061 "Locais de Compras da Fam�lia: Alimenta��o".
variable labels C062 "Local de compras de Roupas/cal�ados (Predominante)".
variable labels C063 "Local de compras de Eletrodom�sticos (Predominante)".
variable labels C064 "Local de compras de Servi�os pessoais (Predominante)".
variable labels C065 "Local de compras de Servi�os em geral (Predominante)".
variable labels C066 "Local de Cultura e lazer (Predominante)".
variable labels C07 "Exist�ncia de Bancos".
variable labels C08 "Em rela��o aos servi�os banc�rios".
variable labels C09 "Qual o servi�o � mais importante para a escolha do seu banco?".
variable labels C101 "Cite o primeiro banco que recordar".
variable labels C102 "Cite o segundo banco que recordar".
variable labels C103 "Cite o terceiro banco que recordar".
variable labels C104 "Cite o quarto banco que recordar".
variable labels INV_FRAC	"Inverso da fra��o amostral".
variable labels PESO	"Peso do domic�lio".
variable labels PROJ_DOM	"Proje��o dos domic�lios".
value labels B01
1 "Permanente"
2 "Improvisado"
3 "Permanente em constru��o".
value labels B02
1 "Casa"
2 "Barraco"
3 " C�modo"
4 "Quitinete/Est�dio"
5 "Flat"
6 "Apartamento"
7 "Uso misto"
8 "Outros".
value labels B03
1 "Pr�prio j� pago (Quitado)"
2 "Pr�prio ainda pagando (Em aquisi��o)"
3 "Pr�prio em terreno n�o legalizado"
4 "Pr�prio em assentamento"
5 "Pr�prio em invas�o"
6 "Alugado"
7 "Alugado em terreno n�o legalizado"
8 "Alugado em assentamento"
9 "Alugado em invas�o"
10 "Cedido"
11 "Cedido em terreno n�o legalizado"
12 "Cedido em assentamento"
13 "Cedido em invas�o"
14 "Funcional"
15 "Outros".
value labels B04
77777 "Recusa"
88888 "N�o sabe"
99999 "N�o se aplica".
value labels B05
77777 "Recusa"
88888 "N�o sabe"
99999 "N�o se aplica".
value labels B06
0 "N�o tem im�vel pr�prio (Reside em um alugado, cedido ou funcional)"
1 "Escritura definitiva"
2 "Concess�o de uso"
3 "Contrato de financiamento particular"
4 "Contrato de financiamento governamental"
5 "Contrato de compra e venda (Cess�o de Direito)"
6 "Minha casa minha vida"
7 "Outros".
value labels B10
1 "Rede Geral"
2 "Po�o/Cisterna"
3 "Po�o Artesiano"
4 "Outros".
value labels B11
1 "N�o tem filtro"
2 "Filtro de barro"
3 "Filtro de parede"
4 "Filtro de carv�o ativado"
5 "�gua Mineral".
value labels B12
1 "N�o"
2 "Sim"
3 "N�o conta com Rede Geral"
88 "N�o sabe/n�o quis responder".
value labels B13
1 "N�o"
2 "Raramente"
3 "Frequentemente"
4 "N�o conta com Rede Geral"
88 "N�o sabe/n�o quis responder".
value labels B14
1 "Rede Geral"
2 "Pr�prio (gerador e bateria)"
3 "Gambiarra"
4 "Outros".
value labels B15
1 "N�o"
2 "Sim"
3 "N�o conta com Rede Geral"
88 "N�o sabe/n�o quis responder".
value labels B16
1 "N�o"
2 "Raramente"
3 "Frequentemente"
4 "N�o conta com Rede Geral"
88 "N�o sabe/n�o quis responder".
value labels B17
1 "Rede Geral"
2 "Fossa S�ptica"
3 "Fossa Rudimentar"
4 "Esgoto a c�u aberto"
5 "Outros".
value labels B18
1 "Sem coleta seletiva"
2 "Com coleta seletiva"
3 "Jogado em local impr�prio"
4 "Outro Destino".
value labels B191
0 "N�o"
1 "Sim".
value labels B192
0 "N�o"
1 "Sim".
value labels B193
0 "N�o"
1 "Sim".
value labels B194
0 "N�o"
1 "Sim".
value labels B195
0 "N�o"
1 "Sim".
value labels B201
0 "N�o"
1 "Sim".
value labels B202
0 "N�o"
1 "Sim".
value labels B203
0 "N�o"
1 "Sim".
value labels B204
0 "N�o"
1 "Sim".
value labels B205
0 "N�o"
1 "Sim".
value labels B206
0 "N�o"
1 "Sim".
value labels B211
0 "N�o"
1 "Sim".
value labels B212
0 "N�o"
1 "Sim".
value labels B213
0 "N�o"
1 "Sim".
value labels B214
0 "N�o"
1 "Sim".
value labels B215
0 "N�o"
1 "Sim".
value labels B216
0 "N�o"
1 "Sim".
value labels B217
0 "N�o"
1 "Sim".
value labels B218
0 "N�o"
1 "Sim".
value labels B22
0 "N�o participa"
1 "Conselhos"
2 "Sindicatos/Associa��es"
3 "Organiza��es/Entidade n�o governamentais"
4 "Cooperativas"
5 "Gr�mio Estudantil"
88 "N�o sabe/n�o quis responder".
value labels B231
0 "N�o"
1 "Sim"
88 "N�o sabe/n�o quis responder".
value labels B232
0 "N�o"
1 "Sim"
88 "N�o sabe/n�o quis responder".
value labels B233
0 "N�o"
1 "Sim"
88 "N�o sabe/n�o quis responder".
value labels B234
0 "N�o"
1 "Sim"
88 "N�o sabe/n�o quis responder".
value labels C031
77777 "N�o quis responder".
value labels C032
77777 "N�o quis responder".
value labels C033
77777 "N�o quis responder".
value labels C034
77777 "N�o quis responder".
value labels C0401
77777 "N�o quis responder".
value labels C0401_imput
0 "N�o"
1 "Sim".
value labels C0402
77777 "N�o quis responder".
value labels C0402_imput
0 "N�o"
1 "Sim".
value labels C0403
77777 "N�o quis responder".
value labels C0403_imput
0 "N�o"
1 "Sim".
value labels C0404
77777 "N�o quis responder".
value labels C0404_imput
0 "N�o"
1 "Sim".
value labels C0405
77777 "N�o quis responder".
value labels C0405_imput
0 "N�o"
1 "Sim".
value labels C0406
77777 "N�o quis responder".
value labels C0406_imput
0 "N�o"
1 "Sim".
value labels C0407
77777 "N�o quis responder".
value labels C0407_imput
0 "N�o"
1 "Sim".
value labels C0408
77777 "N�o quis responder".
value labels C0408_imput
0 "N�o"
1 "Sim".
value labels C0409
77777 "N�o quis responder".
value labels C0409_imput
0 "N�o"
1 "Sim".
value labels C0410
77777 "N�o quis responder".
value labels C0410_imput
0 "N�o"
1 "Sim".
value labels C0411
77777 "N�o quis responder".
value labels C0411_imput
0 "N�o"
1 "Sim".
value labels C0412
77777 "N�o quis responder".
value labels C0412_imput
0 "N�o"
1 "Sim".
value labels C0413
77777 "N�o quis responder".
value labels C0413_imput
0 "N�o"
1 "Sim".
value labels C0414
77777 "N�o quis responder".
value labels C0414_imput
0 "N�o"
1 "Sim".
value labels C0415
77777 "N�o quis responder".
value labels C0415_imput
0 "N�o"
1 "Sim".
value labels C0416
77777 "N�o quis responder".
value labels C0416_imput
0 "N�o"
1 "Sim".
value labels C0417
77777 "N�o quis responder".
value labels C0417_imput
0 "N�o"
1 "Sim".
value labels C0418
77777 "N�o quis responder".
value labels C0418_imput
0 "N�o"
1 "Sim".
value labels C0419
77777 "N�o quis responder".
value labels C0419_imput
0 "N�o"
1 "Sim".
value labels C0420
77777 "N�o quis responder".
value labels C0420_imput
0 "N�o"
1 "Sim".
value labels C0421
77777 "N�o quis responder".
value labels C0421_imput
0 "N�o"
1 "Sim".
value labels C0422
77777 "N�o quis responder".
value labels C0422_imput
0 "N�o"
1 "Sim".
value labels C051
77777 "N�o quis responder".
value labels C052
77777 "N�o quis responder".
value labels C053
77777 "N�o quis responder".
value labels C061 C062 C063 C064 C065 C066
0 "N�o compra"
1 "Plano Piloto"
2 "Gama"
3 "Taguatinga"
4 "Brazl�ndia"
5 "Sobradinho"
6 "Planaltina"
7 "Parano�"
8 "N�cleo Bandeirante"
9 "Ceil�ndia"
10 "Guar�"
11 "Cruzeiro"
12 "Samambaia"
13 "Santa Maria"
14 "S�o Sebasti�o"
15 "Recanto das Emas"
16 "Lago Sul"
17 "Riacho Fundo"
18 "Lago Norte"
19 "Candangol�ndia"
20 "�guas Claras"
21 "Riacho Fundo II"
22 "Sudoeste/Octogonal"
23 "Varj�o"
24 "Park Way"
25 "SCIA/Estrutural"
26 "Sobradinho II"
27 "Jardim Bot�nico"
28 "Itapo�"
29 "SIA"
30 "Vicente Pires"
31 "Fercal"
32 "V�rios locais do DF"
41 "�guas Lindas de Goi�s"
42 "Alex�nia"
43 "Cidade Ocidental (Sede e ABC)"
44 "Cristalina(Sede, Campos Lindos/Maraj�)"
45 "Cocalzinho de Goi�s(Sede, Girassol/Edil�ndia)"
46 "Formosa"
47 "Luzi�nia (Sede e Distritos)"
48 "Novo Gama"
49 "Padre Bernardo (Sede, Monte Alto)"
50 "Planaltina"
51 "Santo Ant�nio do Descoberto"
52 "Valpara�so de Goi�s"
53 "Outros munic�pios da RIDE"
54 "An�polis"
55 "Goi�nia"
56 "Outros locais"
88 "N�o sabe/n�o quis responder".
value labels C07
1 "Existem v�rios na regi�o"
2 "N�o tem banco"
3 "N�o h� bancos suficientes"
88 "N�o sabe/n�o quis responder".
value labels C08
1 "Utilizo v�rios bancos"
2 "Utilizo apenas um banco"
3 "Uso os canais eletr�nicos"
4 "N�o usa"
88 "N�o sabe/n�o quis responder".
value labels C09
1 "Cart�o de Cr�dito"
2 "Financiamento/Empr�stimo"
3 "Investimento"
4 "Recebimento de contas"
5 "Seguro"
6 "Previd�ncia"
7 "Canais de atendimento"
8 "Recebimento de sal�rio"
9 "Outros"
88 "N�o sabe/n�o quis responder"
99 "N�o se aplica".
value labels C101
1 "Bradesco"
2 "Banco Regional de Bras�lia"
3 "Banco do Brasil"
4 "Caixa Econ�mica Federal"
5 "Ita�"
6 "Safra"
7 "Santander"
8 "Outros"
88 "N�o sabe/n�o quis responder"
99 "N�o se aplica".
value labels C102
1 "Bradesco"
2 "Banco Regional de Bras�lia"
3 "Banco do Brasil"
4 "Caixa Econ�mica Federal"
5 "Ita�"
6 "Safra"
7 "Santander"
8 "Outros"
88 "N�o sabe/n�o quis responder"
99 "N�o se aplica".
value labels C103
1 "Bradesco"
2 "Banco Regional de Bras�lia"
3 "Banco do Brasil"
4 "Caixa Econ�mica Federal"
5 "Ita�"
6 "Safra"
7 "Santander"
8 "Outros"
88 "N�o sabe/n�o quis responder"
99 "N�o se aplica".
value labels C104
1 "Bradesco"
2 "Banco Regional de Bras�lia"
3 "Banco do Brasil"
4 "Caixa Econ�mica Federal"
5 "Ita�"
6 "Safra"
7 "Santander"
8 "Outros"
88 "N�o sabe/n�o quis responder"
99 "N�o se aplica".
EXECUTE.
DISPLAY DICTIONARY.

SAVE TRANSLATE /TYPE=ODBC
  /BULKLOADING BATCHSIZE=10000 METHOD=ODBC BINDING=ROW 
  /CONNECT='DSN=DB_CODEPLAN;UID=35866;PWD=7y,z(K$~*E/G/~-b,,+/--;APP=IBM SPSS Products: '+
    'Statistics Common;WSID=DESKTOP-7QGJTQA;DATABASE=DB_CODEPLAN;LANGUAGE=Portugu�s (Brasil)'
  /ENCRYPTED
  /MISSING=RECODE
  /SQL="IF OBJECT_ID('pmad2018.dom_pub', 'U') IS NOT NULL DROP TABLE pmad2018.dom_pub"
  /SQL='CREATE TABLE pmad2018.dom_pub ([referencia] float , '+
    '[municipio] float, [A01setor] float, [A01nficha] float , '+
    ' [A01npessoas] float , [datavisita] varchar (10), [B01] float , [B02] float , [B03] '+
    'float , [B04] float , [B05] float , [B06] float , [B07] float , [B08] float , [B09] float , '+
    '[B10] float , [B11] float , [B12] float , [B13] float , [B14] float , [B15] float , [B16] '+
    'float , [B17] float , [B18] float , [B191] float , [B192] float , [B193] float , [B194] float '+
    ', [B195] float , [B201] float , [B202] float , [B203] float , [B204] float , [B205] float , '+
    '[B206] float , [B211] float , [B212] float , [B213] float , [B214] float , [B215] float , '+
    '[B216] float , [B217] float , [B218] float , [B22] float , [B231] float , [B232] float , '+
    '[B233] float , [B234] float , [C011] float , [C012] float , [C013] float , [C014] float , '+
    '[C015] float , [C016] float , [C017] float , [C018] float , [C019] float , [C021] float , '+
    '[C022] float , [C023] float , [C031] float , [C032] float , [C033] float , [C034] float , '+
    '[C0401] float , [C0402] float , [C0403] float , [C0404] float , [C0405] float , [C0406] float '+
    ', [C0407] float , [C0408] float , [C0409] float , [C0410] float , [C0411] float , [C0412] '+
    'float , [C0413] float , [C0414] float , [C0415] float , [C0416] float , [C0417] float , '+
    '[C0418] float , [C0419] float , [C0420] float , [C0421] float , [C0422] float , [C051] float '+
    ', [C052] float , [C053] float , [C061] float , [C062] float , [C063] float , [C064] float , '+
    '[C065] float , [C066] float , [C07] float , [C08] float , [C09] float , [C101] float , [C102] '+
    'float , [C103] float , [C104] float , [C0401_imput] float , [C0402_imput] float , '+
    '[C0403_imput] float , [C0404_imput] float , [C0405_imput] float , [C0406_imput] float , '+
    '[C0407_imput] float , [C0408_imput] float , [C0409_imput] float , [C0410_imput] float , '+
    '[C0411_imput] float , [C0412_imput] float , [C0413_imput] float , [C0414_imput] float , '+
    '[C0415_imput] float , [C0416_imput] float , [C0417_imput] float , [C0418_imput] float , '+
    '[C0419_imput] float , [C0420_imput] float , [C0421_imput] float , [C0422_imput] float , '+
    '[PESO] float , [INV_FRAC] float , [PROJ_DOM] float )'
  /REPLACE
  /TABLE='SPSS_TEMP'
  /KEEP=referencia, municipio, A01setor, A01nficha, A01npessoas, datavisita, B01, 
    B02, B03, B04, B05, B06, B07, B08, B09, B10, B11, B12, B13, B14, B15, B16, B17, B18, B191, B192, 
    B193, B194, B195, B201, B202, B203, B204, B205, B206, B211, B212, B213, B214, B215, B216, B217, 
    B218, B22, B231, B232, B233, B234, C011, C012, C013, C014, C015, C016, C017, C018, C019, C021, 
    C022, C023, C031, C032, C033, C034, C0401, C0402, C0403, C0404, C0405, C0406, C0407, C0408, C0409, 
    C0410, C0411, C0412, C0413, C0414, C0415, C0416, C0417, C0418, C0419, C0420, C0421, C0422, C051, 
    C052, C053, C061, C062, C063, C064, C065, C066, C07, C08, C09, C101, C102, C103, C104, C0401_imput, 
    C0402_imput, C0403_imput, C0404_imput, C0405_imput, C0406_imput, C0407_imput, C0408_imput, 
    C0409_imput, C0410_imput, C0411_imput, C0412_imput, C0413_imput, C0414_imput, C0415_imput, 
    C0416_imput, C0417_imput, C0418_imput, C0419_imput, C0420_imput, C0421_imput, C0422_imput, PESO, 
    INV_FRAC, PROJ_DOM
  /SQL='INSERT INTO pmad2018.dom_pub ([referencia], '+
    '[municipio], [A01setor], [A01nficha], [A01npessoas], [datavisita], [B01], '+
    '[B02], [B03], [B04], [B05], [B06], [B07], [B08], [B09], [B10], [B11], [B12], [B13], [B14], '+
    '[B15], [B16], [B17], [B18], [B191], [B192], [B193], [B194], [B195], [B201], [B202], [B203], '+
    '[B204], [B205], [B206], [B211], [B212], [B213], [B214], [B215], [B216], [B217], [B218], '+
    '[B22], [B231], [B232], [B233], [B234], [C011], [C012], [C013], [C014], [C015], [C016], '+
    '[C017], [C018], [C019], [C021], [C022], [C023], [C031], [C032], [C033], [C034], [C0401], '+
    '[C0402], [C0403], [C0404], [C0405], [C0406], [C0407], [C0408], [C0409], [C0410], [C0411], '+
    '[C0412], [C0413], [C0414], [C0415], [C0416], [C0417], [C0418], [C0419], [C0420], [C0421], '+
    '[C0422], [C051], [C052], [C053], [C061], [C062], [C063], [C064], [C065], [C066], [C07], '+
    '[C08], [C09], [C101], [C102], [C103], [C104], [C0401_imput], [C0402_imput], [C0403_imput], '+
    '[C0404_imput], [C0405_imput], [C0406_imput], [C0407_imput], [C0408_imput], [C0409_imput], '+
    '[C0410_imput], [C0411_imput], [C0412_imput], [C0413_imput], [C0414_imput], [C0415_imput], '+
    '[C0416_imput], [C0417_imput], [C0418_imput], [C0419_imput], [C0420_imput], [C0421_imput], '+
    '[C0422_imput], [PESO], [INV_FRAC], [PROJ_DOM]) SELECT [referencia], [municipio], [A01setor], '+
    '[A01nficha], [A01npessoas], [datavisita], [B01], [B02], [B03], [B04], [B05], '+
    '[B06], [B07], [B08], [B09], [B10], [B11], [B12], [B13], [B14], [B15], [B16], [B17], [B18], '+
    '[B191], [B192], [B193], [B194], [B195], [B201], [B202], [B203], [B204], [B205], [B206], '+
    '[B211], [B212], [B213], [B214], [B215], [B216], [B217], [B218], [B22], [B231], [B232], '+
    '[B233], [B234], [C011], [C012], [C013], [C014], [C015], [C016], [C017], [C018], [C019], '+
    '[C021], [C022], [C023], [C031], [C032], [C033], [C034], [C0401], [C0402], [C0403], [C0404], '+
    '[C0405], [C0406], [C0407], [C0408], [C0409], [C0410], [C0411], [C0412], [C0413], [C0414], '+
    '[C0415], [C0416], [C0417], [C0418], [C0419], [C0420], [C0421], [C0422], [C051], [C052], '+
    '[C053], [C061], [C062], [C063], [C064], [C065], [C066], [C07], [C08], [C09], [C101], [C102], '+
    '[C103], [C104], [C0401_imput], [C0402_imput], [C0403_imput], [C0404_imput], [C0405_imput], '+
    '[C0406_imput], [C0407_imput], [C0408_imput], [C0409_imput], [C0410_imput], [C0411_imput], '+
    '[C0412_imput], [C0413_imput], [C0414_imput], [C0415_imput], [C0416_imput], [C0417_imput], '+
    '[C0418_imput], [C0419_imput], [C0420_imput], [C0421_imput], [C0422_imput], [PESO], '+
    '[INV_FRAC], [PROJ_DOM] FROM SPSS_TEMP'
  /SQL='DROP TABLE [SPSS_TEMP]'.






*aqui.
GET DATA
  /TYPE=ODBC
  /CONNECT='DSN=DB_CODEPLAN;UID=35866;PWD=7u,I+H+A*y/D/~!R#,$,--;APP=IBM SPSS Products: '+
    'Statistics Common;WSID=320CDL415;DATABASE=DB_CODEPLAN'
  /SQL=
 " select " 
 " referencia, " 
 " case when trim(municipio) = '�guas Lindas de Goi�s' then 41 " 
 "      when trim(municipio) = 'Alex�nia' then 42 " 
 "      when trim(municipio) = 'Cidade Ocidental' then 43 " 
 "      when trim(municipio) = 'Cocalzinho de Goi�s' then 45 " 
 "      when trim(municipio) = 'Cristalina' then 44 " 
 "      when trim(municipio) = 'Formosa' then 46 " 
 "      when trim(municipio) = 'Luzi�nia' then 47 " 
 "      when trim(municipio) = 'Novo Gama' then 48 " 
 "      when trim(municipio) = 'Padre Bernardo' then 49 " 
 "      when trim(municipio) = 'Planaltina' then 50 " 
 "      when trim(municipio) = 'Santo Ant�nio do Descoberto' then 51 " 
 "      when trim(municipio) = 'Valpara�so de Goi�s' then 52 " 
 "      else null " 
 " end as municipio, " 
 " case when trim(A01setor) = '�guas Lindas de Goi�s' then 1 " 
 "      when trim(A01setor) = 'Cocalzinho de Goi�s: Girassol/Edil�ndia' then 2 " 
 "      when trim(A01setor) = 'Cocalzinho de Goi�s: Sede' then 3 " 
 "      when trim(A01setor) = 'Padre Bernardo: Sede' then 4 " 
 "      when trim(A01setor) = 'Padre Bernardo: Monte Alto' then 5 " 
 "      when trim(A01setor) = 'Planaltina' then 6 " 
 "      when trim(A01setor) = 'Valpara�so de Goi�s' then 7 " 
 "      when trim(A01setor) = 'Alex�nia' then 8 " 
 "      when trim(A01setor) = 'Cristalina: Sede' then 9 " 
 "      when trim(A01setor) = 'Cristalina: Campos Lindos/Maraj�' then 10 " 
 "      when trim(A01setor) = 'Formosa' then 11 " 
 "      when trim(A01setor) = 'Luzi�nia: Sede' then 12 " 
 "      when trim(A01setor) = 'Luzi�nia: Jardim Ing�' then 13 " 
 "      when trim(A01setor) = 'Novo Gama' then 14 " 
 "      when trim(A01setor) = 'Cidade Ocidental: Sede' then 15 " 
 "      when trim(A01setor) = 'Cidade Ocidental: Jardim ABC' then 16 " 
 "      when trim(A01setor) = 'Santo Ant�nio do Descoberto' then 17 " 
 "      else null " 
 " end as A01setor, " 
 " A01nficha, " 
 " A01npessoas, " 
 " D01, " 
 " D02, " 
 " D06, " 
 " D03, " 
 " D04, " 
 " D05, " 
 " D07, " 
 " D08, " 
 " D09, " 
 " D10, " 
 " D11, " 
 " D12, " 
 " D13, " 
 " D14, " 
 " D15, " 
 " D16, " 
 " D17, " 
 " D18, " 
 " D19, " 
 " D20, " 
 " D21, " 
 " D22, " 
 " E01, " 
 " E02, " 
 " E03, " 
 " E04, " 
 " E05, " 
 " E06, " 
 " E07, " 
 " E08, " 
 " E09, " 
 " E10, " 
 " E11, " 
 " E12, " 
 " E13, " 
 " E14, " 
 " E15, " 
 " fator_mun as PESO, " 
 " pop_proj as PROJ_POP, " 
 " pos_estrato " 
 " from pmad2018.dp_mor_1718 " 
  /ASSUMEDSTRWIDTH=255.
CACHE.
EXECUTE.
variable labels referencia "Ano da pesquisa".
variable labels municipio "Munic�pio pesquisado".
variable labels A01setor "A01setor - Setor Pesquisado".
variable labels A01nficha "A01nficha - N�mero da ficha".
variable labels A01npessoas "A01npessoas - Qtd. pessoas no domic�lio".
variable labels D01 "C�digo de identifica��o �nico do morador".
variable labels D02 "Qual a condi��o do morador no domic�lio?".
variable labels D06 "Responsabilidade compartilhada (para menores de 14 anos)".
variable labels D03 "Sexo".
variable labels D04 "Cor ou Ra�a".
variable labels D05 "Idade".
variable labels D07 "Qual o seu Estado Civil?".
variable labels D08 "Qual a Religi�o?".
variable labels D09 "Frequ�ncia Religiosa".
variable labels D10 "Qual a sua naturalidade? (Unidade da Federa��o onde nasceu)".
variable labels D11 "Para os nascidos no DF, onde a fam�lia morava na �poca do nascimento?".
variable labels D12 "Em que ano chegou ao munic�pio? (Para quem n�o nasceu em Goi�s)".
variable labels D13 "De onde veio para o munic�pio? (Unidades da Federa��o)".
variable labels D14 "Por que veio?".
variable labels D15 "H� quanto tempo mora ininterruptamente no munic�pio?".
variable labels D16 "Acesso � Internet (Predominante)".
variable labels D17 "O Sr(a). tem plano de sa�de?".
variable labels D18 "Utiliza hospital p�blico?".
variable labels D19 "Utiliza posto de sa�de?".
variable labels D20 "Qual o tipo viol�ncia mais recente que sofreu nos �ltimos 12 meses".
variable labels D21 "Local da viol�ncia?".
variable labels D22 "Registrou queixa do ocorrido?".
variable labels E01 "Frequenta escola ou creche regular?".
variable labels E02 "Local onde estuda?".
variable labels E03 "Qual seu n�vel de escolaridade?".
variable labels E04 "S�rie/Ano/Semestre conclu�do?".
variable labels E05 "Atualmente o Sr(a) est� fazendo outro curso?".
variable labels E06 "Qual a sua situa��o de atividade?".
variable labels E07 "Qual setor da atividade remunerada?".
variable labels E08 "Qual a sua posi��o de ocupa��o?".
variable labels E09 "Local onde trabalha?".
variable labels E10 "Quanto tempo o Sr(a) gasta de casa at� o seu trabalho?".
variable labels E11 "Quais modos de transporte o Sr(a) utliza para ir  para o trabalho?".
variable labels E12 "Quanto o Sr(a) recebeu no m�s passado do Trabalho Principal (em R$, sem centavos)".
variable labels E13 "Quanto o Sr(a) recebeu no m�s passado dos outros Rendimentos (em R$, sem centavos)".
variable labels E14 "O Sr(a) contribui para a Previd�ncia Social P�blica (INSS)?".
variable labels E15 "Local onde utiliza os servi�os banc�rios?".
variable labels PESO "Peso do morador".
variable labels PROJ_POP "Proje��o da popula��o".
variable labels pos_estrato "Dom�nios de proje��o".
value labels D02
1 "Pessoa respons�vel pelo domic�lio"
2 "C�njuge ou companheiro(a) de sexo diferente"
3 "C�njuge ou companheiro(a) do mesmo sexo"
4 "Filho(a)"
5 "Enteado"
6 "Outro parente"
7 "Agregado(a)"
8 "Pensionista"
9 "Empregado(a) dom�stico(a)"
10 "Outros".
value labels D06
0 "N�o"
1 "Sim"
99 "N�o se aplica".
value labels D03
1 "Masculino"
2 "Feminino".
value labels D04
1 "Branca"
2 "Preta"
3 "Amarela"
4 "Parda"
5 "Ind�gena"
88 "N�o sabe/n�o quis responder".
value labels D05
0 "Menor de 1 ano".
value labels D07
1 "Solteiro"
2 "Casado Civil"
3 "Casado Religioso"
4 "Civil e Religioso"
5 "Divorciado"
6 "Separado"
7 "Uni�o est�vel"
8 "Vi�vo"
88 "N�o sabe"
99 "N�o se aplica".
value labels D08
0 "N�o tem religi�o"
1 "Cat�lica"
2 "Evang�lica tradicional"
3 "Evang�lica pentecostal"
4 "Esp�rita"
5 "Oriental"
6 "Origem Afro"
7 "Outras"
8 "N�o sabe/N�o quis responder".
value labels D09
0 "N�o frequenta"
1 "Praticante regular"
2 "Praticante eventual"
88 "N�o sabe/n�o quis responder"
99 "N�o se aplica".
value labels D10
1 "Distrito Federal"
2 "Acre"
3 "Alagoas"
4 "Amap�"
5 "Amazonas"
6 "Bahia"
7 "Cear�"
8 "Esp�rito Santo"
9 "Goi�s"
10 "Maranh�o"
11 "Mato Grosso"
12 "Mato Grosso do Sul"
13 "Minas Gerais"
14 "Par�"
15 "Para�ba"
16 "Paran�"
17 "Pernambuco"
18 "Piau�"
19 "Rio de Janeiro"
20 "Rio Grande do Norte"
21 "Rio Grande do Sul"
22 "Rond�nia"
23 "Roraima"
24 "Santa Catarina"
25 "S�o Paulo"
26 "Sergipe"
27 "Tocantins"
28 "Exterior"
88 "N�o sabe/N�o quis informar".
value labels D11
1 "No DF"
2 "No munic�pio"
3 "Outro munic�pio da PMB"
4 "Em outro local"
88 "N�o sabe/N�o quis responder"
99 "N�o se aplica".
value labels D12
8888 "N�o sabe"
9999 "N�o se aplica".
value labels D13
1 "Distrito Federal"
2 "Acre"
3 "Alagoas"
4 "Amap�"
5 "Amazonas"
6 "Bahia"
7 "Cear�"
8 "Esp�rito Santo"
9 "Goi�s"
10 "Maranh�o"
11 "Mato Grosso"
12 "Mato Grosso do Sul"
13 "Minas Gerais"
14 "Par�"
15 "Para�ba"
16 "Paran�"
17 "Pernambuco"
18 "Piau�"
19 "Rio de Janeiro"
20 "Rio Grande do Norte"
21 "Rio Grande do Sul"
22 "Rond�nia"
23 "Roraima"
24 "Santa Catarina"
25 "S�o Paulo"
26 "Sergipe"
27 "Tocantins"
28 "Exterior"
88 "N�o sabe/N�o quis informar"
99 "N�o se aplica".
value labels D14
1 "Acompanhar Parentes/Reuni�o Familiar"
2 "Estudo e ou escola"
3 "Aquisi��o moradia"
4 "Programa de Governo para Moradia"
5 "Transfer�ncia de trabalho"
6 "Procura de Trabalho"
7 "Melhor acesso aos servi�os de sa�de"
8 "Mudan�a de estado civil"
9 "Outros Motivos"
88 "N�o sabe"
99 "N�o se aplica".
value labels D15
888 "N�o sabe/n�o quis responder"
999 "N�o se aplica".
value labels D16
0 "N�o acessa"
1 "Computador de casa"
2 "Computador do trabalho"
3 "Celular"
4 "Tablet"
5 "Lan House"
88 "N�o sabe/n�o quis responder".
value labels D17
0 "N�o possui"
1 "Empresarial"
2 "Particular"
88 "N�o sabe/n�o quis responder".
value labels D18
0 "N�o utiliza"
1 "Plano Piloto"
2 "Gama"
3 "Taguatinga"
4 "Brazl�ndia"
5 "Sobradinho"
6 "Planaltina"
7 "Parano�"
8 "N�cleo Bandeirante"
9 "Ceil�ndia"
10 "Guar�"
11 "Cruzeiro"
12 "Samambaia"
13 "Santa Maria"
14 "S�o Sebasti�o"
15 "Recanto das Emas"
16 "Lago Sul"
17 "Riacho Fundo"
18 "Lago Norte"
19 "Candangol�ndia"
20 "�guas Claras"
21 "Riacho Fundo II"
22 "Sudoeste/Octogonal"
23 "Varj�o"
24 "Park Way"
25 "SCIA-Estrutural"
26 "Sobradinho II"
27 "Jardim Bot�nico"
28 "Itapo�"
29 "SIA"
30 "Vicente Pires"
31 "Fercal"
32 "V�rios locais do DF"
41 "�guas Lindas de Goi�s"
42 "Alex�nia"
43 "Cidade Ocidental (Sede e ABC)"
44 "Cristalina (Sede, Campos Lindos/ Maraj�)"
45 "Cocalzinho de Goi�s (Sede, Girassol/Edil�ndia)"
46 "Formosa"
47 "Luzi�nia (Sede e Distritos)"
48 "Novo Gama"
49 "Padre Bernardo (Sede, Monte Alto)"
50 "Planaltina"
51 "Santo Ant�nio do Descoberto"
52 "Valpara�so de Goi�s"
53 "Outros munic�pios da RIDE"
54 "An�polis"
55 "Goi�nia"
56 "Outros locais"
88 "N�o sabe/n�o quis responder".
value labels D19
0 "N�o utiliza"
1 "Plano Piloto"
2 "Gama"
3 "Taguatinga"
4 "Brazl�ndia"
5 "Sobradinho"
6 "Planaltina"
7 "Parano�"
8 "N�cleo Bandeirante"
9 "Ceil�ndia"
10 "Guar�"
11 "Cruzeiro"
12 "Samambaia"
13 "Santa Maria"
14 "S�o Sebasti�o"
15 "Recanto das Emas"
16 "Lago Sul"
17 "Riacho Fundo"
18 "Lago Norte"
19 "Candangol�ndia"
20 "�guas Claras"
21 "Riacho Fundo II"
22 "Sudoeste/Octogonal"
23 "Varj�o"
24 "Park Way"
25 "SCIA-Estrutural"
26 "Sobradinho II"
27 "Jardim Bot�nico"
28 "Itapo�"
29 "SIA"
30 "Vicente Pires"
31 "Fercal"
32 "V�rios locais do DF"
41 "�guas Lindas de Goi�s"
42 "Alex�nia"
43 "Cidade Ocidental (Sede e ABC)"
44 "Cristalina (Sede, Campos Lindos/ Maraj�)"
45 "Cocalzinho de Goi�s (Sede, Girassol/Edil�ndia)"
46 "Formosa"
47 "Luzi�nia (Sede e Distritos)"
48 "Novo Gama"
49 "Padre Bernardo (Sede, Monte Alto)"
50 "Planaltina"
51 "Santo Ant�nio do Descoberto"
52 "Valpara�so de Goi�s"
53 "Outros munic�pios da RIDE"
54 "An�polis"
55 "Goi�nia"
56 "Outros locais"
88 "N�o sabe/n�o quis responder".
value labels D20
0 "N�o sofreu"
1 "Roubo de carros"
2 "Furto de carros"
3 "Furto de dentro do carro"
4 "Dano/vandalismo de carros"
5 "Roubo de motocicletas/lambretas"
6 "Furto de motocicletas/lambretas"
7 "Roubo de bicicletas"
8 "Furto de bicicleta"
9 "Arrombamento"
10 "Tentativa de arrombamento"
11 "Roubo de outros bens"
12 "Furto pessoais"
13 "Ofensa sexual"
14 "Agress�o f�sica/amea�as"
88 "N�o sabe/n�o lembra"
99 "N�o se aplica".
value labels D21
1 "Na sua casa"
2 "Na casa de algum parente ou amigo"
3 "Andando na rua"
4 "No local de trabalho"
5 "Meios de transporte (�nibus, metr�, trem, t�xi, lota��o, carro, etc.)"
6 "Locais p�blicos internos (banco, escola, shopping, restaurantes, bar, loja, etc)"
7 "Locais p�blicos externos (pra�a, parque, jardim, etc)"
88 "N�o sabe/n�o lembra"
99 "N�o se aplica".
value labels D22
1 "N�o denunciou"
2 "Sim na Pol�cia Militar"
3 "Sim na Pol�cia Civil"
4 "Sim na Pol�cia Rodovi�ria Federal"
5 "Sim outra"
88 "N�o sabe/n�o lembra"
99 "N�o se aplica".
value labels E01
0 "N�o"
1 "Escola p�blica"
2 "Escola particular"
3 "A dist�ncia p�blica"
4 "A dist�ncia particular"
88 "N�o sabe".
value labels E02
1 "Plano Piloto"
2 "Gama"
3 "Taguatinga"
4 "Brazl�ndia"
5 "Sobradinho"
6 "Planaltina"
7 "Parano�"
8 "N�cleo Bandeirante"
9 "Ceil�ndia"
10 "Guar�"
11 "Cruzeiro"
12 "Samambaia"
13 "Santa Maria"
14 "S�o Sebasti�o"
15 "Recanto das Emas"
16 "Lago Sul"
17 "Riacho Fundo"
18 "Lago Norte"
19 "Candangol�ndia"
20 "�guas Claras"
21 "Riacho Fundo II"
22 "Sudoeste/Octogonal"
23 "Varj�o"
24 "Park Way"
25 "SCIA-Estrutural"
26 "Sobradinho II"
27 "Jardim Bot�nico"
28 "Itapo�"
29 "SIA"
30 "Vicente Pires"
31 "Fercal"
32 "V�rios locais do DF"
41 "�guas Lindas de Goi�s"
42 "Alex�nia"
43 "Cidade Ocidental (Sede e ABC)"
44 "Cristalina (Sede, Campos Lindos/ Maraj�)"
45 "Cocalzinho de Goi�s (Sede, Girassol/Edil�ndia)"
46 "Formosa"
47 "Luzi�nia (Sede e Distritos)"
48 "Novo Gama"
49 "Padre Bernardo (Sede, Monte Alto)"
50 "Planaltina"
51 "Santo Ant�nio do Descoberto"
52 "Valpara�so de Goi�s"
53 "Outros munic�pios da RIDE"
54 "An�polis"
55 "Goi�nia"
56 "Outros locais"
57 "Curso � dist�ncia"
88 "N�o sabe/n�o quis responder"
99 "N�o se aplica".
value labels E03
1 "Analfabeto (15 anos e mais)"
2 "Sabe ler e escrever (15 anos e mais)"
3 "Alfabetiza��o de jovens e adultos (15 anos e mais)"
4 "Ensino Especial"
5 "Maternal e Creche (0 anos a 3 anos)"
6 "Jardim I e II/ pr�-escola (entre 4 e 5 anos)"
7 "EJA Ensino Fundamental incompleto (15 anos e mais)"
8 "EJA Ensino Fundamental completo (17 anos e mais)"
9 "EJA Ensino M�dio incompleto (18 anos e mais)"
10 "EJA Ensino M�dio completo (20 anos e mais)"
11 "Regular do Ensino fundamental incompleto (6 anos e mais)"
12 "Regular do Ensino fundamental completo (13 anos e mais)"
13 "Regular do Ensino m�dio incompleto (14 anos e mais)"
14 "Regular do Ensino m�dio completo (16 anos e mais)"
15 "Superior incompleto (16 anos e mais)"
16 "Superior completo"
17 "Curso de Especializa��o (21 anos e mais)"
18 "Mestrado (21 anos e mais)"
19 "Doutorado (21 anos e mais)"
20 "Crian�as de 6 a 14 anos fora da escola"
88 "N�o sabe/n�o quis responder"
99 "Menor de 6 anos fora da escola".
value labels E04
1 "Primeira(o)"
2 "Segunda(o)"
3 "Terceira(o)"
4 "Quarta(o)"
5 "Quinta(o)"
6 "Sexta(o)"
7 "S�tima(o)"
8 "Oitava(o)"
9 "Nona(o)"
88 "N�o sabe"
99 "N�o se aplica".
value labels E05
0 "N�o faz"
1 "Preparat�rio para concurso"
2 "Preparat�rio para vestibular/Enem"
3 "Preparat�rio para concurso e vestibular/Enem"
4 "Pronatec"
5 "L�nguas"
6 "Outros"
88 "N�o sabe"
99 "N�o se aplica".
value labels E06
0 "N�o tem atividade"
1 "Tem trabalho remunerado (Incluindo estagi�rios e aprendizes)"
2 "Aposentado"
3 "Aposentado trabalhando"
4 "Pensionista"
5 "Do lar"
6 "Desempregado"
7 "Estudante"
8 "Trabalho volunt�rio"
88 "N�o sabe"
99 "N�o se aplica".
value labels E07
1 "Agricultura, Pecu�ria, Produ��o Florestal, Pesca e Aquicultura"
2 "Constru��o"
3 "Ind�stria"
4 "Com�rcio"
5 "Empresa P�blica Federal/GDF"
6 "Empresa P�blica"
7 "Administra��o P�blica Federal/GDF"
8 "Administra��o P�blica"
9 "Transporte e armazenagem"
10 "Comunica��o e informa��o"
11 "Educa��o"
12 "Sa�de"
13 "Servi�os Dom�sticos"
14 "Servi�os pessoais"
15 "Servi�os credit�cios e financeiros"
16 "Servi�os imobili�rios"
17 "Servi�os gerais"
18 "Administra��o P�blica do munic�pio"
19 "Administra��o P�blica de Goi�s"
77 "Recusa"
88 "N�o sabe"
99 "N�o se aplica".
value labels E08
1 "Empregado com CTPS"
2 "Empregado sem CTPS"
3 "Empregado tempor�rio"
4 "Servidor p�blico/militar"
5 "Profissional Liberal MEI (0 ou 1 empregado)"
6 "Microempreendedor individual"
7 "Microempres�rio (at� 9 empregados)"
8 "Pequeno empres�rio (10 at� 49 empregados)"
9 "M�dio empres�rio (50 at� 99 empregados)"
10 "Grande empres�rio (100 ou mais empregados)"
11 "Aut�nomo"
12 "Estagi�rio/Aprendiz"
13 "Cargo Comissionado"
14 "Ajuda no neg�cio da fam�lia"
88 "N�o sabe"
99 "N�o se aplica".
value labels E09
1 "Plano Piloto"
2 "Gama"
3 "Taguatinga"
4 "Brazl�ndia"
5 "Sobradinho"
6 "Planaltina"
7 "Parano�"
8 "N�cleo Bandeirante"
9 "Ceil�ndia"
10 "Guar�"
11 "Cruzeiro"
12 "Samambaia"
13 "Santa Maria"
14 "S�o Sebasti�o"
15 "Recanto das Emas"
16 "Lago Sul"
17 "Riacho Fundo"
18 "Lago Norte"
19 "Candangol�ndia"
20 "�guas Claras"
21 "Riacho Fundo II"
22 "Sudoeste/Octogonal"
23 "Varj�o"
24 "Park Way"
25 "SCIA-Estrutural"
26 "Sobradinho II"
27 "Jardim Bot�nico"
28 "Itapo�"
29 "SIA"
30 "Vicente Pires"
31 "Fercal"
32 "V�rios locais do DF"
41 "Aguas Lindas de Goi�s"
42 "Alex�nia"
43 "Cidade Ocidental (sede e ABC)"
44 "Cristalina (Sede, Campos Lindos/ Maraj�)"
45 "Cocalzinho de Goi�s (Sede, Girassol/Edil�ndia)"
46 "Formosa"
47 "Luzi�nia (Sede e Distritos)"
48 "Novo Gama"
49 "Padre Bernardo (Sede, Monte Alto)"
50 "Planaltina"
51 "Santo Ant�nio do Descoberto"
52 "Valpara�so de Goi�s"
53 "Outros munic�pios da RIDE"
54 "An�polis"
55 "Goi�nia"
56 "Outros locais"
88 "N�o sabe/n�o quis responder"
99 "N�o se aplica".
value labels E10
1 "At� 20 minutos"
2 "Entre 20 e 40 minutos"
3 "Entre 40 minutos e 1 hora"
4 "Entre 1 hora e 1 hora e meia"
5 "Entre 1 hora e meia e 2 horas"
6 "De 2 horas a 3 horas"
7 "Acima de 3 horas"
88 "N�o sabe/n�o quis responder"
99 "N�o se aplica".
value labels E11
1 "�nibus"
2 "Mais de um �nibus"
3 "Autom�vel"
4 "�nibus e autom�vel"
5 "�nibus e metr�"
6 "Autom�vel e metr�"
7 "Utilit�rio"
8 "Metr�"
9 "Motocicleta"
10 "Bicicleta"
11 "A p�"
12 "Outros"
99 "N�o se aplica".
value labels E12
77777 "Recusa"
88888 "N�o sabe"
99999 "N�o se aplica".
value labels E13
77777 "Recusa"
88888 "N�o sabe"
99999 "N�o se aplica".
value labels E14
0 "N�o trabalha"
1 "Trabalha, mas n�o contribui"
2 "P�blica"
3 "Privada"
4 "P�blica e privada"
88 "N�o sabe"
99 "N�o se aplica".
value labels E15
0 "N�o utiliza servi�os banc�rios"
1 "Plano Piloto"
2 "Gama"
3 "Taguatinga"
4 "Brazl�ndia"
5 "Sobradinho"
6 "Planaltina"
7 "Parano�"
8 "N�cleo Bandeirante"
9 "Ceil�ndia"
10 "Guar�"
11 "Cruzeiro"
12 "Samambaia"
13 "Santa Maria"
14 "S�o Sebasti�o"
15 "Recanto das Emas"
16 "Lago Sul"
17 "Riacho Fundo"
18 "Lago Norte"
19 "Candangol�ndia"
20 "�guas Claras"
21 "Riacho Fundo II"
22 "Sudoeste/Octogonal"
23 "Varj�o"
24 "Park Way"
25 "SCIA-Estrutural"
26 "Sobradinho II"
27 "Jardim Bot�nico"
28 "Itapo�"
29 "SIA"
30 "Vicente Pires"
31 "Fercal"
32 "V�rios locais do DF"
41 "�guas Lindas de Goi�s"
42 "Alex�nia"
43 "Cidade Ocidental (Sede e ABC)"
44 "Cristalina (Sede, Campos Lindos/ Maraj�)"
45 "Cocalzinho de Goi�s (Sede, Girassol/Edil�ndia)"
46 "Formosa"
47 "Luzi�nia (Sede e Distritos)"
48 "Novo Gama"
49 "Padre Bernardo (Sede, Monte Alto)"
50 "Planaltina"
51 "Santo Ant�nio do Descoberto"
52 "Valpara�so de Goi�s"
53 "Outros munic�pios da RIDE"
54 "An�polis"
55 "Goi�nia"
56 "Outros locais"
88 "N�o sabe/n�o quis responder"
99 "N�o se aplica".
DISPLAY DICTIONARY.

SAVE TRANSLATE /TYPE=ODBC
  /BULKLOADING BATCHSIZE=10000 METHOD=ODBC BINDING=ROW 
  /CONNECT='DSN=DB_CODEPLAN;UID=35866;PWD=8y,z+K+A*z,t,N-a##+#-!;APP=IBM SPSS Products: '+
    'Statistics Common;WSID=DESKTOP-7QGJTQA;DATABASE=DB_CODEPLAN;LANGUAGE=Portugu�s (Brasil)'
  /ENCRYPTED
  /MISSING=RECODE
  /SQL="IF OBJECT_ID('pmad2018.mor_pub', 'U') IS NOT NULL DROP TABLE pmad2018.mor_pub"
  /SQL='CREATE TABLE pmad2018.mor_pub ([referencia] float , '+
    '[municipio] float, [A01setor] float, [A01nficha] float , [A01npessoas] float , '+
    '[D01] float , [D02] float , [D06] float , [D03] float , [D04] float , [D05] float , [D07] '+
    'float , [D08] float , [D09] float , [D10] float , [D11] float , [D12] float , [D13] float , '+
    '[D14] float , [D15] float , [D16] float , [D17] float , [D18] float , [D19] float , [D20] '+
    'float , [D21] float , [D22] float , [E01] float , [E02] float , [E03] float , [E04] float , '+
    '[E05] float , [E06] float , [E07] float , [E08] float , [E09] float , [E10] float , [E11] '+
    'float , [E12] float , [E13] float , [E14] float , [E15] float , [PESO] float , [PROJ_POP] '+
    'float , [pos_estrato] varchar (5))'
  /REPLACE
  /TABLE='SPSS_TEMP'
  /KEEP=referencia, municipio, A01setor, A01nficha, A01npessoas, D01, D02, D06, D03, D04, D05, D07, 
    D08, D09, D10, D11, D12, D13, D14, D15, D16, D17, D18, D19, D20, D21, D22, E01, E02, E03, E04, E05, 
    E06, E07, E08, E09, E10, E11, E12, E13, E14, E15, PESO, PROJ_POP, pos_estrato
  /SQL='INSERT INTO pmad2018.mor_pub ([referencia], '+
    '[municipio], [A01setor], [A01nficha], [A01npessoas], [D01], [D02], [D06], [D03], [D04], '+
    '[D05], [D07], [D08], [D09], [D10], [D11], [D12], [D13], [D14], [D15], [D16], [D17], [D18], '+
    '[D19], [D20], [D21], [D22], [E01], [E02], [E03], [E04], [E05], [E06], [E07], [E08], [E09], '+
    '[E10], [E11], [E12], [E13], [E14], [E15], [PESO], [PROJ_POP], [pos_estrato]) SELECT '+
    '[referencia], [municipio], [A01setor], [A01nficha], [A01npessoas], [D01], [D02], [D06], '+
    '[D03], [D04], [D05], [D07], [D08], [D09], [D10], [D11], [D12], [D13], [D14], [D15], [D16], '+
    '[D17], [D18], [D19], [D20], [D21], [D22], [E01], [E02], [E03], [E04], [E05], [E06], [E07], '+
    '[E08], [E09], [E10], [E11], [E12], [E13], [E14], [E15], [PESO], [PROJ_POP], [pos_estrato] '+
    'FROM SPSS_TEMP'
  /SQL='DROP TABLE [SPSS_TEMP]'.

