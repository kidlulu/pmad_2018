* Encoding: windows-1252.

dataset close all.

GET DATA
  /TYPE=ODBC
  /CONNECT='DSN=DB_CODEPLAN;UID=35866;PWD=4I/F(G+N%F,D,N!b#/(,--;APP=IBM SPSS Products: '+
    'Statistics Common;WSID=NOTE-LULAKAFAS;DATABASE=DB_CODEPLAN;LANGUAGE=Portugu�s (Brasil)'
  /SQL='select * from pmad2018.dom_pub'
  /ASSUMEDSTRWIDTH=255.
CACHE.

alter type 
B01 B02 B06 B08 B09 B10 B11 B14 B17 B18 B191 B192 B193 B194 
B195 B201 B202 B203 B204 B205 B206 B211 B212 B213 B214 B215 
B216 B217 B218 C011 C012 C013 C014 C015 C016 C017 C018 C019 
C021 C022 C023 C031 C032 C033 C034 C0402 C0405 C0406 C0408 
C0409 C0410 C0411 C0412 C0413 C0414 C0415 C0417 C0422 C051 
C052 C053 C0401_imput C0402_imput C0403_imput C0404_imput 
C0405_imput C0406_imput C0407_imput C0408_imput C0409_imput 
C0410_imput C0411_imput C0412_imput C0413_imput C0414_imput 
C0415_imput C0416_imput C0417_imput C0418_imput C0419_imput 
C0420_imput C0421_imput C0422_imput (F1) 
municipio A01setor A01npessoas B03 B07 B12 B13 B15 B16 B22 
B231 B232 B233 B234 C0401 C061 C062 C063 C064 C065 C066 C07 
C08 C09 C101 C102 C103 C104 (F2) 
referencia (F4) 
A01nficha B04 B05 C0403 C0404 C0407 C0416 C0418 C0419 C0420 C0421 (F5) 
datavisita (A10).

variable labels  referencia 'referencia - Ano da pesquisa'.

variable labels  municipio 'municipio - Munic�pio da amostra'.
value labels municipio
41 '�guas Lindas de Goi�s'
42 'Alex�nia'
43 'Cidade Ocidental'
44 'Cristalina'
45 'Cocalzinho de Goi�s'
46 'Formosa'
47 'Luzi�nia'
48 'Novo Gama'
49 'Padre Bernardo'
50 'Planaltina'
51 'Santo Ant�nio do Descoberto'
52 'Valpara�so de Goi�s'.

variable labels  A01setor 'A01setor - Distrito do munic�pio da amostra'.
value labels A01setor
1 '�guas Lindas'
2 'Cocalzinho de Goi�s: Girassol/Edil�ndia'
3 'Cocalzinho de Goi�s: Sede'
4 'Padre Bernardo: Sede'
5 'Padre Bernardo: Monte Alto'
6 'Planaltina'
7 'Valpara�so de Goi�s'
8 'Alex�nia'
9 'Cristalina: Sede'
10 'Cristalina: Campos Lindos'
11 'Formosa'
12 'Luzi�nia: Sede'
13 'Luzi�nia: Jardim Ing�'
14 'Novo Gama'
15 'Cidade Ocidental: Sede'
16 'Cidade Ocidental: Jardim ABC'
17 'Santo Ant�nio do Descoberto'.

variable labels  A01nficha 'A01nficha - N�mero da ficha'.
variable labels  A01nPessoas 'A01nPessoas - Qtd. pessoas no domic�lio'.
variable labels  datavisita 'datavisita - Data da Entrevista'.

variable labels  B01 'B01 - Esp�cie do domic�lio'.
value labels B01
1 'Permanente'
2 'Improvisado'
3 'Permanente em constru��o'.

variable labels  B02 'B02 - Tipo do seu domic�lio'.
value labels B02
1 'Casa'
2 'Barraco'
3 'C�modo'
4 'Quitinete/Est�dio'
5 'Flat'
6 'Apartamento'
7 'Uso misto'
8 'Outros'.

variable labels  B03 'B03 - Qual a situa��o do seu domic�lio?'.
value labels B03
1 'Pr�prio j� pago (Quitado)'
2 'Pr�prio ainda pagando (Em aquisi��o)'
3 'Pr�prio em terreno n�o legalizado'
4 'Pr�prio em assentamento'
5 'Pr�prio em invas�o'
6 'Alugado'
7 'Alugado em terreno n�o legalizado'
8 'Alugado em assentamento'
9 'Alugado em invas�o'
10 'Cedido'
11 'Cedido em terreno n�o legalizado'
12 'Cedido em assentamento'
13 'Cedido em invas�o'
14 'Funcional'
15 'Outros'.

variable labels  B04 'B04 - Se o im�vel for pr�prio em aquisi��o, qual o valor mensal pago ou que deveria ser pago da �ltima presta��o?'.
variable labels  B05 'B05 - Se o im�vel for alugado qual o �ltimo valor do aluguel pago ou que deveria ser pago?'.
value labels B04 B05
77777 'Recusa'
88888 'N�o sabe'
99999 'N�o se aplica'.

variable labels  B06 'B06 - Condi��o Legal do Im�vel'.
value labels B06
0 'N�o tem im�vel pr�prio (Reside em um alugado, cedido ou funcional)'
1 'Escritura definitiva'
2 'Concess�o de uso'
3 'Contrato de financiamento particular'
4 'Contrato de financiamento governamental'
5 'Contrato de compra e venda (Cess�o de Direito)'
6 'Minha casa minha vida'
7 'Outros'.

variable labels  B07 'B07 - Quantos c�modos tem este domic�lio?'.
variable labels  B08 'B08 - Quantos c�modos est�o servindo permanentemente de dormit�rios neste domic�lio?'.
variable labels  B09 'B09 - Quantos banheiros e/ou sanit�rios t�m este domic�lio?'.

variable labels  B10 'B10 - Como � feito o abastecimento de �gua neste domic�lio?'.
value labels B10
1 'Rede Geral'
2 'Po�o/Cisterna'
3 'Po�o Artesiano'
4 'Outros'.

variable labels  B11 'B11 - Consumo de �gua pot�vel'.
value labels B11
1 'N�o tem filtro'
2 'Filtro de barro'
3 'Filtro de parede'
4 'Filtro de carv�o ativado'
5 '�gua Mineral'.

variable labels  B12 'B12 - Pratica a��es para fins de economizar �gua?'.
value labels B12
1 'N�o'
2 'Sim'
3 'N�o conta com Rede Geral'
88 'N�o sabe/n�o quis responder'.

variable labels  B13 'B13 - Falta �gua?'.
value labels B13
1 'N�o'
2 'Raramente'
3 'Frequentemente'
4 'N�o conta com Rede Geral'
88 'N�o sabe/n�o quis responder'.

variable labels  B14 'B14 - Como este domic�lio � abastecido por energia el�trica?'.
value labels B14
1 'Rede Geral'
2 'Pr�prio (gerador e bateria)'
3 'Gambiarra'
4 'Outros'.

variable labels  B15 'B15 - Pratica a��es para fins de economizar Energia?'.
value labels B15
1 'N�o'
2 'Sim'
3 'N�o conta com Rede Geral'
88 'N�o sabe/n�o quis responder'.

variable labels  B16 'B16 - Falta Energia?'.
value labels B16
1 'N�o'
2 'Raramente'
3 'Frequentemente'
4 'N�o conta com Rede Geral'
88 'N�o sabe/n�o quis responder'.

variable labels  B17 'B17 - Esgotamento Sanit�rio?'.
value labels B17
1 'Rede Geral'
2 'Fossa S�ptica'
3 'Fossa Rudimentar'
4 'Esgoto a c�u aberto'
5 'Outros'.

variable labels  B18 'B18 - Coleta de Lixo?'.
value labels B18
1 'Sem coleta seletiva'
2 'Com coleta seletiva'
3 'Jogado em local impr�prio'
4 'Outro Destino'.

variable labels  B191 'B191 - Rua asfaltada'.
variable labels  B192 'B192 - Cal�ada'.
variable labels  B193 'B193 - Meio Fio'.
variable labels  B194 'B194 - Ilumina��o p�blica'.
variable labels  B195 'B195 - Rede de �gua pluvial'.
variable labels  B201 'B201 - Eros�o'.
variable labels  B202 'B202 - �rea em declive'.
variable labels  B203 'B203 - Entulho'.
variable labels  B204 'B204 - Esgoto a c�u aberto'.
variable labels  B205 'B205 - �rea alagadas (chuva)'.
variable labels  B206 'B206 - Ruas esburacadas'.
variable labels  B211 'B211 - Tem ruas arborizadas'.
variable labels  B212 'B212 - Tem jardins/parques'.
variable labels  B213 'B213 - Tem �rea de preserva��o ambiental'.
variable labels  B214 "B214 - Tem nascente d'�gua".
variable labels  B215 'B215 - Ciclovia'.
variable labels  B216 'B216 - Tem espa�o cultural'.
variable labels  B217 'B217 - Academia comunit�ria'.
variable labels  B218 'B218 - Tem ponto de �nibus'.
value labels B191 B192 B193 B194 B195 B201 B202 B203 B204 B205 B206 B211 B212 B213 B214 B215 B216 B217 B218
0 'N�o'
1 'Sim'.

variable labels  B22 'B22 - Participa��o Social'.
value labels B22
0 'N�o participa'
1 'Conselhos'
2 'Sindicatos/Associa��es'
3 'Organiza��es/Entidade n�o governamentais'
4 'Cooperativas'
5 'Gr�mio Estudantil'
88 'N�o sabe/n�o quis responder'.

variable labels  B231 'B231 - Usa espa�os das escolas, extraclasse'.
variable labels  B232 'B232 - Participa de campanhas e reuni�es'.
variable labels  B233 'B233 - Conhece o projeto pedag�gico'.
variable labels  B234 'B234 - Conhece o Desempenho das escolas (IBEB/Prova Brasil)'.
value labels B231 B232 B233 B234
0 'N�o'
1 'Sim'
88 'N�o sabe/n�o quis responder'.

variable labels  C011 'C011 - Quantidade de autom�veis (fabricados at� 1999)'.
variable labels  C012 'C012 - Quantidade de autom�veis (2000 at� 2009)'.
variable labels  C013 'C013 - Quantidade de autom�veis (2010 ou mais)'.
variable labels  C014 'C014 - Quantidade de utilit�rio'.
variable labels  C015 'C015 - Quantidade de ve�culos de carga'.
variable labels  C016 'C016 - Quantidade de motocicleta'.
variable labels  C017 'C017 - Quantidade de bicicleta'.
variable labels  C018 'C018 - Quantidade de carro�a'.
variable labels  C019 'C019 - Quantidade de outros ve�culos'.
variable labels  C021 'C021 - Quantidade enplacada no munic�pio'.
variable labels  C022 'C022 - Quantidade enplacada no DF'.
variable labels  C023 'C023 - Quantidade enplacada em outro local'.
value labels C011 C012 C013 C014 C015 C016 C017 C018 C019 C021 C022 C023
0 'N�o possui'.

variable labels  C031 'C031 - Quantidade de internet (Wifi e ou 3G/4G)'.
variable labels  C032 'C032 - Quantidade de TV por Assinatura'.
variable labels  C033 'C033 - Quantidade de assinatura de jornais'.
variable labels  C034 'C034 - Quantidade de assinatura de revistas'.
variable labels  C0401 'C0401 - Quantidade de placas de energia/aquecedor solar'.
variable labels  C0402 'C0402 - Quantidade de ar condicionados'.
variable labels  C0403 'C0403 - Quantidade de circuladores de ar e/ou ventiladores'.
variable labels  C0404 'C0404 - Quantidade de fog�es'.
variable labels  C0405 'C0405 - Quantidade de fornos micro-ondas'.
variable labels  C0406 'C0406 - Quantidade de fornos el�tricos'.
variable labels  C0407 'C0407 - Quantidade de freezers'.
variable labels  C0408 'C0408 - Quantidade de geladeiras'.
variable labels  C0409 'C0409 - Quantidade de Ipod e similares'.
variable labels  C0410 'C0410 - Quantidade de m�quinas de lavar roupa'.
variable labels  C0411 'C0411 - Quantidade de m�quinas de lavar lou�a'.
variable labels  C0412 'C0412 - Quantidade de m�quinas de fotogr�fica digital'.
variable labels  C0413 'C0413 - Quantidade de microcomputadores/Desktop'.
variable labels  C0414 'C0414 - Quantidade de notebook/Laptop'.
variable labels  C0415 'C0415 - Quantidade de tablets/Ipad'.
variable labels  C0416 'C0416 - Quantidade de tanquinhos el�tricos'.
variable labels  C0417 'C0417 - Quantidade de telefones fixos'.
variable labels  C0418 'C0418 - Quantidade de telefones celulares pr�-pago'.
variable labels  C0419 'C0419 - Quantidade de telefones celulares p�s-pago'.
variable labels  C0420 'C0420 - Quantidade de televisores (tubo)'.
variable labels  C0421 'C0421 - Quantidade de televisores tela fina/plana'.
variable labels  C0422 'C0422 - Quantidade de Umidificadores'.
variable labels  C051 'C051 - Quantidade de mensalista morador do domic�lio'.
variable labels  C052 'C052 - Quantidade de mensalista n�o morador do domic�lio'.
variable labels  C053 'C053 - Quantidade de diarista'.
value labels C031 C032 C033 C034 C0401 C0402 C0403 C0404 C0405 C0406 C0407 C0408 C0409 C0410 C0411 C0412 C0413 
C0414 C0415 C0416 C0417 C0418 C0419 C0420 C0421 C0422 C051 C052 C053
0 'N�o possui'
77777 'N�o quis responder'.

variable labels  C061 'C061 - Local predominante de compras de Alimenta��o'.
variable labels  C062 'C062 - Local predominante de compras de Roupas/cal�ados'.
variable labels  C063 'C063 - Local predominante de compras de Eletrodom�sticos'.
variable labels  C064 'C064 - Local predominante de compras de Servi�os pessoais'.
variable labels  C065 'C065 - Local predominante de compras de Servi�os em geral'.
variable labels  C066 'C066 - Local predominante de Cultura e lazer'.
value labels C061 C062 C063 C064 C065 C066
0 'N�o compra'
1 'Plano Piloto'
2 'Gama'
3 'Taguatinga'
4 'Brazl�ndia'
5 'Sobradinho'
6 'Planaltina'
7 'Parano�'
8 'N�cleo Bandeirante'
9 'Ceil�ndia'
10 'Guar�'
11 'Cruzeiro'
12 'Samambaia'
13 'Santa Maria'
14 'S�o Sebasti�o'
15 'Recanto das Emas'
16 'Lago Sul'
17 'Riacho Fundo'
18 'Lago Norte'
19 'Candangol�ndia'
20 '�guas Claras'
21 'Riacho Fundo II'
22 'Sudoeste/Octogonal'
23 'Varj�o'
24 'Park Way'
25 'SCIA/Estrutural'
26 'Sobradinho II'
27 'Jardim Bot�nico'
28 'Itapo�'
29 'SIA'
30 'Vicente Pires'
31 'Fercal'
32 'V�rios locais do DF'
41 '�guas Lindas de Goi�s'
42 'Alex�nia'
43 'Cidade Ocidental (Sede e ABC)'
44 'Cristalina (Sede, Campos Lindos/Maraj�)'
45 'Cocalzinho de Goi�s (Sede, Girassol/Edil�ndia)'
46 'Formosa'
47 'Luzi�nia (Sede e Distritos)'
48 'Novo Gama'
49 'Padre Bernardo (Sede, Monte Alto)'
50 'Planaltina'
51 'Santo Ant�nio do Descoberto'
52 'Valpara�so de Goi�s'
53 'Outros munic�pios da RIDE'
54 'An�polis'
55 'Goi�nia'
56 'Outros locais'
88 'N�o sabe/n�o quis responder'.

variable labels  C07 'C07 - Exist�ncia de Bancos'.
value labels C07
1 'Existem v�rios na regi�o'
2 'N�o tem banco'
3 'N�o h� bancos suficientes'
88 'N�o sabe/n�o quis responder'.

variable labels  C08 'C08 - Em rela��o aos servi�os banc�rios'.
value labels C08
1 'Utilizo v�rios bancos'
2 'Utilizo apenas um banco'
3 'Uso os canais eletr�nicos'
4 'N�o usa'
88 'N�o sabe/n�o quis responder'.

variable labels  C09 'C09 - Servi�o mais importante para a escolha do banco'.
value labels C09
1 'Cart�o de Cr�dito'
2 'Financiamento/Empr�stimo'
3 'Investimento'
4 'Recebimento de contas'
5 'Seguro'
6 'Previd�ncia'
7 'Canais de atendimento'
8 'Recebimento de sal�rio'
9 'Outros'
88 'N�o sabe/n�o quis responder'
99 'N�o se aplica'.

variable labels  C101 'C101 - Primeiro banco que recordar'.
variable labels  C102 'C102 - Segundo banco que recordar'.
variable labels  C103 'C103 - Terceiro banco que recordar'.
variable labels  C104 'C104 - Quarto banco que recordar'.
value labels C101 C102 C103 C104
1 'Bradesco'
2 'Banco Regional de Bras�lia'
3 'Banco do Brasil'
4 'Caixa Econ�mica Federal'
5 'Ita�'
6 'Safra'
7 'Santander'
8 'Outros'
88 'N�o sabe/n�o quis responder'
99 'N�o se aplica'.

variable labels  C0401_imput 'C0401_imput - Marcador de dados imputados'.
variable labels  C0402_imput 'C0402_imput - Marcador de dados imputados'.
variable labels  C0403_imput 'C0403_imput - Marcador de dados imputados'.
variable labels  C0404_imput 'C0404_imput - Marcador de dados imputados'.
variable labels  C0405_imput 'C0405_imput - Marcador de dados imputados'.
variable labels  C0406_imput 'C0406_imput - Marcador de dados imputados'.
variable labels  C0407_imput 'C0407_imput - Marcador de dados imputados'.
variable labels  C0408_imput 'C0408_imput - Marcador de dados imputados'.
variable labels  C0409_imput 'C0409_imput - Marcador de dados imputados'.
variable labels  C0410_imput 'C0410_imput - Marcador de dados imputados'.
variable labels  C0411_imput 'C0411_imput - Marcador de dados imputados'.
variable labels  C0412_imput 'C0412_imput - Marcador de dados imputados'.
variable labels  C0413_imput 'C0413_imput - Marcador de dados imputados'.
variable labels  C0414_imput 'C0414_imput - Marcador de dados imputados'.
variable labels  C0415_imput 'C0415_imput - Marcador de dados imputados'.
variable labels  C0416_imput 'C0416_imput - Marcador de dados imputados'.
variable labels  C0417_imput 'C0417_imput - Marcador de dados imputados'.
variable labels  C0418_imput 'C0418_imput - Marcador de dados imputados'.
variable labels  C0419_imput 'C0419_imput - Marcador de dados imputados'.
variable labels  C0420_imput 'C0420_imput - Marcador de dados imputados'.
variable labels  C0421_imput 'C0421_imput - Marcador de dados imputados'.
variable labels  C0422_imput 'C0422_imput - Marcador de dados imputados'.
value labels C0401_imput C0402_imput C0403_imput C0404_imput C0405_imput C0406_imput C0407_imput C0408_imput C0409_imput 
C0410_imput C0411_imput C0412_imput C0413_imput C0414_imput C0415_imput C0416_imput C0417_imput C0418_imput C0419_imput
C0420_imput C0421_imput C0422_imput
0 'N�o'
1 'Sim'.

variable labels  PESO 'PESO - Peso do domic�lio'.
variable labels  INV_FRAC 'INV_FRAC - Inverso da fra��o amostral'.
variable labels  PROJ_DOM 'PROJ_DOM - Proje��o dos domic�lios'.

 * FREQUENCIES VARIABLES=referencia municipio A01setor A01nficha A01npessoas datavisita B01 B02 B03 
    B04 B05 B06 B07 B08 B09 B10 B11 B12 B13 B14 B15 B16 B17 B18 B191 B192 B193 B194 B195 B201 B202 B203 
    B204 B205 B206 B211 B212 B213 B214 B215 B216 B217 B218 B22 B231 B232 B233 B234 C011 C012 C013 C014 
    C015 C016 C017 C018 C019 C021 C022 C023 C031 C032 C033 C034 C0401 C0402 C0403 C0404 C0405 C0406 
    C0407 C0408 C0409 C0410 C0411 C0412 C0413 C0414 C0415 C0416 C0417 C0418 C0419 C0420 C0421 C0422 
    C051 C052 C053 C061 C062 C063 C064 C065 C066 C07 C08 C09 C101 C102 C103 C104 C0401_imput 
    C0402_imput C0403_imput C0404_imput C0405_imput C0406_imput C0407_imput C0408_imput C0409_imput 
    C0410_imput C0411_imput C0412_imput C0413_imput C0414_imput C0415_imput C0416_imput C0417_imput 
    C0418_imput C0419_imput C0420_imput C0421_imput C0422_imput PESO INV_FRAC PROJ_DOM
  /ORDER=ANALYSIS.

dataset name base.
dataset activate base.

sort cases by referencia municipio A01setor A01nficha.

DATASET ACTIVATE base.
DATASET COPY  rf_2017.
DATASET ACTIVATE  rf_2017.
FILTER OFF.
USE ALL.
SELECT IF (any(referencia,2016,2017)).
EXECUTE.

SAVE TRANSLATE OUTFILE='C:\Users\kidlu\pmad_2018\versao_site\pmad_2017_domicilios.csv'
  /TYPE=CSV
  /ENCODING='Locale'
  /MAP
  /REPLACE
  /FIELDNAMES
  /CELLS=VALUES
  /TEXTOPTIONS DELIMITER = '|' QUALIFIER = '"'.

dataset close rf_2017.
DATASET ACTIVATE base.
DATASET COPY  rf_2018.
DATASET ACTIVATE  rf_2018.
FILTER OFF.
USE ALL.
SELECT IF (referencia = 2018).
EXECUTE.

SAVE TRANSLATE OUTFILE='C:\Users\kidlu\pmad_2018\versao_site\pmad_2018_domicilios.csv'
  /TYPE=CSV
  /ENCODING='Locale'
  /MAP
  /REPLACE
  /FIELDNAMES
  /CELLS=VALUES
  /TEXTOPTIONS DELIMITER = '|' QUALIFIER = '"'.

*aqui.
dataset close all.

GET DATA
  /TYPE=ODBC
  /CONNECT='DSN=DB_CODEPLAN;UID=35866;PWD=4I/F(G+N%F,D,N!b#/(,--;APP=IBM SPSS Products: '+
    'Statistics Common;WSID=NOTE-LULAKAFAS;DATABASE=DB_CODEPLAN;LANGUAGE=Portugu�s (Brasil)'
  /SQL='select * from pmad2018.mor_pub'
  /ASSUMEDSTRWIDTH=255.
CACHE.

alter type D03 D08 (F1) 
           municipio A01setor A01npessoas D02 D06 D04 D07 D09 D10 D11 D13 D14 D16 
           D17 D18 D19 D20 D21 D22 E01 E02 E03 E04 E05 E06 E07 E08 E09 E10 E11 E14 E15 (F2)
           D05 D15 (F3) 
           referencia D12 (F4) 
           A01nficha D01 E12 E13 (F5).


variable labels referencia ' Ano da pesquisa'.

variable labels municipio ' Munic�pio da amostra'.
value labels municipio
41 '�guas Lindas de Goi�s'
42 'Alex�nia'
43 'Cidade Ocidental'
44 'Cristalina'
45 'Cocalzinho de Goi�s'
46 'Formosa'
47 'Luzi�nia'
48 'Novo Gama'
49 'Padre Bernardo'
50 'Planaltina'
51 'Santo Ant�nio do Descoberto'
52 'Valpara�so de Goi�s'.

variable labels A01setor ' Distrito do munic�pio da amostra'.
value labels A01setor
1 '�guas Lindas'
2 'Cocalzinho de Goi�s: Girassol/Edil�ndia'
3 'Cocalzinho de Goi�s: Sede'
4 'Padre Bernardo: Sede'
5 'Padre Bernardo: Monte Alto'
6 'Planaltina'
7 'Valpara�so de Goi�s'
8 'Alex�nia'
9 'Cristalina: Sede'
10 'Cristalina: Campos Lindos'
11 'Formosa'
12 'Luzi�nia: Sede'
13 'Luzi�nia: Jardim Ing�'
14 'Novo Gama'
15 'Cidade Ocidental: Sede'
16 'Cidade Ocidental: Jardim ABC'
17 'Santo Ant�nio do Descoberto'.

variable labels A01nficha ' N�mero da ficha'.
variable labels A01nPessoas ' Quantidade pessoas no domic�lio'.
variable labels D01 ' C�digo de identifica��o �nico do morador'.

variable labels D02 ' Qual a condi��o do morador no domic�lio?'.
value labels D02
1 'Pessoa respons�vel pelo domic�lio'
2 'C�njuge ou companheiro(a) de sexo diferente'
3 'C�njuge ou companheiro(a) do mesmo sexo'
4 'Filho(a)'
5 'Enteado'
6 'Outro parente'
7 'Agregado(a)'
8 'Pensionista'
9 'Empregado(a) dom�stico(a)'
10 'Outros'.

variable labels D06 ' Responsabilidade compartilhada (para menores de 14 anos)'.
value labels D06
0 'N�o'
1 'Sim'
99 'N�o se aplica'.

variable labels D03 ' Sexo'.
value labels D03
1 'Masculino'
2 'Feminino'.

variable labels D04 ' Cor ou Ra�a'.
value labels D04
1 'Branca'
2 'Preta'
3 'Amarela'
4 'Parda'
5 'Ind�gena'
88 'N�o sabe/n�o quis responder'.

variable labels D05 ' Idade'.
value labels D05
0 'Menor de 1 ano'.

variable labels D07 ' Qual o seu Estado Civil?'.
value labels D07
1 'Solteiro'
2 'Casado Civil'
3 'Casado Religioso'
4 'Civil e Religioso'
5 'Divorciado'
6 'Separado'
7 'Uni�o est�vel'
8 'Vi�vo'
88 'N�o sabe'
99 'N�o se aplica'.

variable labels D08 ' Qual a Religi�o?'.
value labels D08
0 'N�o tem religi�o'
1 'Cat�lica'
2 'Evang�lica tradicional'
3 'Evang�lica pentecostal'
4 'Esp�rita'
5 'Oriental'
6 'Origem Afro'
7 'Outras'
8 'N�o sabe/N�o quis responder'.

variable labels D09 ' Frequ�ncia Religiosa'.
value labels D09
0 'N�o frequenta'
1 'Praticante regular'
2 'Praticante eventual'
88 'N�o sabe/n�o quis responder'
99 'N�o se aplica'.

variable labels D10 ' Qual a sua naturalidade? (Unidade da Federa��o onde nasceu)'.
value labels D10
1 'Distrito Federal'
2 'Acre'
3 'Alagoas'
4 'Amap�'
5 'Amazonas'
6 'Bahia'
7 'Cear�'
8 'Esp�rito Santo'
9 'Goi�s'
10 'Maranh�o'
11 'Mato Grosso'
12 'Mato Grosso do Sul'
13 'Minas Gerais'
14 'Par�'
15 'Para�ba'
16 'Paran�'
17 'Pernambuco'
18 'Piau�'
19 'Rio de Janeiro'
20 'Rio Grande do Norte'
21 'Rio Grande do Sul'
22 'Rond�nia'
23 'Roraima'
24 'Santa Catarina'
25 'S�o Paulo'
26 'Sergipe'
27 'Tocantins'
28 'Exterior'
88 'N�o sabe/N�o quis informar'.

variable labels D11 ' Para os nascidos no DF, onde a fam�lia morava na �poca do nascimento?'.
value labels D11
1 'No DF'
2 'No munic�pio'
3 'Outro munic�pio da PMB'
4 'Em outro local'
88 'N�o sabe/N�o quis responder'
99 'N�o se aplica'.

variable labels D12 ' Em que ano chegou ao munic�pio? (Para quem n�o nasceu em Goi�s)'.
value labels D12
8888 'N�o sabe'
9999 'N�o se aplica'.

variable labels D13 ' De onde veio para o munic�pio? (Unidades da Federa��o)'.
value labels D13
1 'Distrito Federal'
2 'Acre'
3 'Alagoas'
4 'Amap�'
5 'Amazonas'
6 'Bahia'
7 'Cear�'
8 'Esp�rito Santo'
9 'Goi�s'
10 'Maranh�o'
11 'Mato Grosso'
12 'Mato Grosso do Sul'
13 'Minas Gerais'
14 'Par�'
15 'Para�ba'
16 'Paran�'
17 'Pernambuco'
18 'Piau�'
19 'Rio de Janeiro'
20 'Rio Grande do Norte'
21 'Rio Grande do Sul'
22 'Rond�nia'
23 'Roraima'
24 'Santa Catarina'
25 'S�o Paulo'
26 'Sergipe'
27 'Tocantins'
28 'Exterior'
88 'N�o sabe/N�o quis informar'
99 'N�o se aplica'.

variable labels D14 ' Por que veio?'.
value labels D14
1 'Acompanhar Parentes/Reuni�o Familiar'
2 'Estudo e ou escola'
3 'Aquisi��o moradia'
4 'Programa de Governo para Moradia'
5 'Transfer�ncia de trabalho'
6 'Procura de Trabalho'
7 'Melhor acesso aos servi�os de sa�de'
8 'Mudan�a de estado civil'
9 'Outros Motivos'
88 'N�o sabe'
99 'N�o se aplica'.

variable labels D15 ' H� quanto tempo mora ininterruptamente no munic�pio?'.
value labels D15
888 'N�o sabe/n�o quis responder'
999 'N�o se aplica'.

variable labels D16 ' Acesso � Internet (Predominante)'.
value labels D16
0 'N�o acessa'
1 'Computador de casa'
2 'Computador do trabalho'
3 'Celular'
4 'Tablet'
5 'Lan House'
88 'N�o sabe/n�o quis responder'.

variable labels D17 ' O Sr(a). tem plano de sa�de?'.
value labels D17
0 'N�o possui'
1 'Empresarial'
2 'Particular'
88 'N�o sabe/n�o quis responder'

variable labels D18 ' Local onde utilizou hospital p�blico'.
variable labels D19 ' Local onde utilizou posto de sa�de'.

value labels D18 D19
0 'N�o utiliza'
1 'Plano Piloto'
2 'Gama'
3 'Taguatinga'
4 'Brazl�ndia'
5 'Sobradinho'
6 'Planaltina'
7 'Parano�'
8 'N�cleo Bandeirante'
9 'Ceil�ndia'
10 'Guar�'
11 'Cruzeiro'
12 'Samambaia'
13 'Santa Maria'
14 'S�o Sebasti�o'
15 'Recanto das Emas'
16 'Lago Sul'
17 'Riacho Fundo'
18 'Lago Norte'
19 'Candangol�ndia'
20 '�guas Claras'
21 'Riacho Fundo II'
22 'Sudoeste/Octogonal'
23 'Varj�o'
24 'Park Way'
25 'SCIA-Estrutural'
26 'Sobradinho II'
27 'Jardim Bot�nico'
28 'Itapo�'
29 'SIA'
30 'Vicente Pires'
31 'Fercal'
32 'V�rios locais do DF'
41 '�guas Lindas de Goi�s'
42 'Alex�nia'
43 'Cidade Ocidental (Sede e ABC)'
44 'Cristalina (Sede, Campos Lindos/ Maraj�)'
45 'Cocalzinho de Goi�s (Sede, Girassol/Edil�ndia)'
46 'Formosa'
47 'Luzi�nia (Sede e Distritos)'
48 'Novo Gama'
49 'Padre Bernardo (Sede, Monte Alto)'
50 'Planaltina'
51 'Santo Ant�nio do Descoberto'
52 'Valpara�so de Goi�s'
53 'Outros munic�pios da RIDE'
54 'An�polis'
55 'Goi�nia'
56 'Outros locais'
88 'N�o sabe/n�o quis responder'.

variable labels D20 ' Qual o tipo viol�ncia mais recente que sofreu nos �ltimos 12 meses'.
value labels D20
0 'N�o sofreu'
1 'Roubo de carros'
2 'Furto de carros'
3 'Furto de dentro do carro'
4 'Dano/vandalismo de carros'
5 'Roubo de motocicletas/lambretas'
6 'Furto de motocicletas/lambretas'
7 'Roubo de bicicletas'
8 'Furto de bicicleta'
9 'Arrombamento'
10 'Tentativa de arrombamento'
11 'Roubo de outros bens'
12 'Furto pessoais'
13 'Ofensa sexual'
14 'Agress�o f�sica/amea�as'
88 'N�o sabe/n�o lembra'
99 'N�o se aplica'.

variable labels D21 ' Local da viol�ncia?'.
value labels D21
1 'Na sua casa'
2 'Na casa de algum parente ou amigo'
3 'Andando na rua'
4 'No local de trabalho'
5 'Meios de transporte (�nibus, metr�, trem, t�xi, lota��o, carro, etc.)'
6 'Locais p�blicos internos (banco, escola, shopping, restaurantes, bar, loja, etc)'
7 'Locais p�blicos externos (pra�a, parque, jardim, etc)'
88 'N�o sabe/n�o lembra'
99 'N�o se aplica'.

variable labels D22 ' Registrou queixa do ocorrido?'.
value labels D22
1 'N�o denunciou'
2 'Sim na Pol�cia Militar'
3 'Sim na Pol�cia Civil'
4 'Sim na Pol�cia Rodovi�ria Federal'
5 'Sim outra'
88 'N�o sabe/n�o lembra'
99 'N�o se aplica'.

variable labels E01 ' Frequenta escola ou creche regular?'.
value labels E01
0 'N�o'
1 'Escola p�blica'
2 'Escola particular'
3 'A dist�ncia p�blica'
4 'A dist�ncia particular'
88 'N�o sabe'.

variable labels E02 ' Local onde estuda'.
value labels E02
1 'Plano Piloto'
2 'Gama'
3 'Taguatinga'
4 'Brazl�ndia'
5 'Sobradinho'
6 'Planaltina'
7 'Parano�'
8 'N�cleo Bandeirante'
9 'Ceil�ndia'
10 'Guar�'
11 'Cruzeiro'
12 'Samambaia'
13 'Santa Maria'
14 'S�o Sebasti�o'
15 'Recanto das Emas'
16 'Lago Sul'
17 'Riacho Fundo'
18 'Lago Norte'
19 'Candangol�ndia'
20 '�guas Claras'
21 'Riacho Fundo II'
22 'Sudoeste/Octogonal'
23 'Varj�o'
24 'Park Way'
25 'SCIA-Estrutural'
26 'Sobradinho II'
27 'Jardim Bot�nico'
28 'Itapo�'
29 'SIA'
30 'Vicente Pires'
31 'Fercal'
32 'V�rios locais do DF'
41 '�guas Lindas de Goi�s'
42 'Alex�nia'
43 'Cidade Ocidental (Sede e ABC)'
44 'Cristalina (Sede, Campos Lindos/ Maraj�)'
45 'Cocalzinho de Goi�s (Sede, Girassol/Edil�ndia)'
46 'Formosa'
47 'Luzi�nia (Sede e Distritos)'
48 'Novo Gama'
49 'Padre Bernardo (Sede, Monte Alto)'
50 'Planaltina'
51 'Santo Ant�nio do Descoberto'
52 'Valpara�so de Goi�s'
53 'Outros munic�pios da RIDE'
54 'An�polis'
55 'Goi�nia'
56 'Outros locais'
57 'Curso � dist�ncia'
88 'N�o sabe/n�o quis responder'
99 'N�o se aplica'.

variable labels E03 ' Qual seu n�vel de escolaridade?'.
value labels E03
1 'Analfabeto (15 anos e mais)'
2 'Sabe ler e escrever (15 anos e mais)'
3 'Alfabetiza��o de jovens e adultos (15 anos e mais)'
4 'Ensino Especial'
5 'Maternal e Creche (0 anos a 3 anos)'
6 'Jardim I e II/ pr�-escola (entre 4 e 5 anos)'
7 'EJA Ensino Fundamental incompleto (15 anos e mais)'
8 'EJA Ensino Fundamental completo (17 anos e mais)'
9 'EJA Ensino M�dio incompleto (18 anos e mais)'
10 'EJA Ensino M�dio completo (20 anos e mais)'
11 'Regular do Ensino fundamental incompleto (6 anos e mais)'
12 'Regular do Ensino fundamental completo (13 anos e mais)'
13 'Regular do Ensino m�dio incompleto (14 anos e mais)'
14 'Regular do Ensino m�dio completo (16 anos e mais)'
15 'Superior incompleto (16 anos e mais)'
16 'Superior completo'
17 'Curso de Especializa��o (21 anos e mais)'
18 'Mestrado (21 anos e mais)'
19 'Doutorado (21 anos e mais)'
20 'Crian�as de 6 a 14 anos fora da escola'
88 'N�o sabe/n�o quis responder'
99 'Menor de 6 anos fora da escola'.

variable labels E04 ' S�rie/Ano/Semestre conclu�do?'.
value labels E04
1 'Primeira(o)'
2 'Segunda(o)'
3 'Terceira(o)'
4 'Quarta(o)'
5 'Quinta(o)'
6 'Sexta(o)'
7 'S�tima(o)'
8 'Oitava(o)'
9 'Nona(o)'
88 'N�o sabe'
99 'N�o se aplica'.

variable labels E05 ' Atualmente o Sr(a) est� fazendo outro curso?'.
value labels E05
0 'N�o faz'
1 'Preparat�rio para concurso'
2 'Preparat�rio para vestibular/Enem'
3 'Preparat�rio para concurso e vestibular/Enem'
4 'Pronatec'
5 'L�nguas'
6 'Outros'
88 'N�o sabe'
99 'N�o se aplica'.

variable labels E06 ' Qual a sua situa��o de atividade?'.
value labels E06
0 'N�o tem atividade'
1 'Tem trabalho remunerado (Incluindo estagi�rios e aprendizes)'
2 'Aposentado'
3 'Aposentado trabalhando'
4 'Pensionista'
5 'Do lar'
6 'Desempregado'
7 'Estudante'
8 'Trabalho volunt�rio'
88 'N�o sabe'
99 'N�o se aplica'.

variable labels E07 ' Qual setor da atividade remunerada?'.
value labels E07
1 'Agricultura, Pecu�ria, Produ��o Florestal, Pesca e Aquicultura'
2 'Constru��o'
3 'Ind�stria'
4 'Com�rcio'
5 'Empresa P�blica Federal/GDF'
6 'Empresa P�blica'
7 'Administra��o P�blica Federal/GDF'
8 'Administra��o P�blica'
9 'Transporte e armazenagem'
10 'Comunica��o e informa��o'
11 'Educa��o'
12 'Sa�de'
13 'Servi�os Dom�sticos'
14 'Servi�os pessoais'
15 'Servi�os credit�cios e financeiros'
16 'Servi�os imobili�rios'
17 'Servi�os gerais'
18 'Administra��o P�blica do munic�pio'
19 'Administra��o P�blica de Goi�s'
77 'Recusa'
88 'N�o sabe'
99 'N�o se aplica'.

variable labels E08 ' Qual a sua posi��o de ocupa��o?'.
value labels E08
1 'Empregado com CTPS'
2 'Empregado sem CTPS'
3 'Empregado tempor�rio'
4 'Servidor p�blico/militar'
5 'Profissional Liberal MEI (0 ou 1 empregado)'
6 'Microempreendedor individual'
7 'Microempres�rio (at� 9 empregados)'
8 'Pequeno empres�rio (10 at� 49 empregados)'
9 'M�dio empres�rio (50 at� 99 empregados)'
10 'Grande empres�rio (100 ou mais empregados)'
11 'Aut�nomo'
12 'Estagi�rio/Aprendiz'
13 'Cargo Comissionado'
14 'Ajuda no neg�cio da fam�lia'
88 'N�o sabe'
99 'N�o se aplica'.

variable labels E09 ' Local onde trabalha?'.
value labels E09
1 'Plano Piloto'
2 'Gama'
3 'Taguatinga'
4 'Brazl�ndia'
5 'Sobradinho'
6 'Planaltina'
7 'Parano�'
8 'N�cleo Bandeirante'
9 'Ceil�ndia'
10 'Guar�'
11 'Cruzeiro'
12 'Samambaia'
13 'Santa Maria'
14 'S�o Sebasti�o'
15 'Recanto das Emas'
16 'Lago Sul'
17 'Riacho Fundo'
18 'Lago Norte'
19 'Candangol�ndia'
20 '�guas Claras'
21 'Riacho Fundo II'
22 'Sudoeste/Octogonal'
23 'Varj�o'
24 'Park Way'
25 'SCIA-Estrutural'
26 'Sobradinho II'
27 'Jardim Bot�nico'
28 'Itapo�'
29 'SIA'
30 'Vicente Pires'
31 'Fercal'
32 'V�rios locais do DF'
41 'Aguas Lindas de Goi�s'
42 'Alex�nia'
43 'Cidade Ocidental (sede e ABC)'
44 'Cristalina (Sede, Campos Lindos/ Maraj�)'
45 'Cocalzinho de Goi�s (Sede, Girassol/Edil�ndia)'
46 'Formosa'
47 'Luzi�nia (Sede e Distritos)'
48 'Novo Gama'
49 'Padre Bernardo (Sede, Monte Alto)'
50 'Planaltina'
51 'Santo Ant�nio do Descoberto'
52 'Valpara�so de Goi�s'
53 'Outros munic�pios da RIDE'
54 'An�polis'
55 'Goi�nia'
56 'Outros locais'
88 'N�o sabe/n�o quis responder'
99 'N�o se aplica'.

variable labels E10 ' Quanto tempo o Sr(a) gasta de casa at� o seu trabalho?'.
value labels E10
1 'At� 20 minutos'
2 'Entre 20 e 40 minutos'
3 'Entre 40 minutos e 1 hora'
4 'Entre 1 hora e 1 hora e meia'
5 'Entre 1 hora e meia e 2 horas'
6 'De 2 horas a 3 horas'
7 'Acima de 3 horas'
88 'N�o sabe/n�o quis responder'
99 'N�o se aplica'.

variable labels E11 ' Quais modos de transporte o Sr(a) utliza para ir  para o trabalho?'.
value labels E11
1 '�nibus'
2 'Mais de um �nibus'
3 'Autom�vel'
4 '�nibus e autom�vel'
5 '�nibus e metr�'
6 'Autom�vel e metr�'
7 'Utilit�rio'
8 'Metr�'
9 'Motocicleta'
10 'Bicicleta'
11 'A p�'
12 'Outros'
99 'N�o se aplica'.

variable labels E12 ' Quanto o Sr(a) recebeu no m�s passado do Trabalho Principal (em R$, sem centavos)'.
value labels E12
77777 'Recusa'
88888 'N�o sabe'
99999 'N�o se aplica'.

variable labels E13 ' Quanto o Sr(a) recebeu no m�s passado dos outros Rendimentos (em R$, sem centavos)'.
value labels E13
77777 'Recusa'
88888 'N�o sabe'
99999 'N�o se aplica'.

variable labels E14 ' O Sr(a) contribui para a Previd�ncia Social P�blica (INSS)?'.
value labels E14
0 'N�o trabalha'
1 'Trabalha, mas n�o contribui'
2 'P�blica'
3 'Privada'
4 'P�blica e privada'
88 'N�o sabe'
99 'N�o se aplica'.

variable labels E15 ' Local onde utiliza os servi�os banc�rios?'.
value labels E15
0 'N�o utiliza servi�os banc�rios'
1 'Plano Piloto'
2 'Gama'
3 'Taguatinga'
4 'Brazl�ndia'
5 'Sobradinho'
6 'Planaltina'
7 'Parano�'
8 'N�cleo Bandeirante'
9 'Ceil�ndia'
10 'Guar�'
11 'Cruzeiro'
12 'Samambaia'
13 'Santa Maria'
14 'S�o Sebasti�o'
15 'Recanto das Emas'
16 'Lago Sul'
17 'Riacho Fundo'
18 'Lago Norte'
19 'Candangol�ndia'
20 '�guas Claras'
21 'Riacho Fundo II'
22 'Sudoeste/Octogonal'
23 'Varj�o'
24 'Park Way'
25 'SCIA-Estrutural'
26 'Sobradinho II'
27 'Jardim Bot�nico'
28 'Itapo�'
29 'SIA'
30 'Vicente Pires'
31 'Fercal'
32 'V�rios locais do DF'
41 '�guas Lindas de Goi�s'
42 'Alex�nia'
43 'Cidade Ocidental (Sede e ABC)'
44 'Cristalina (Sede, Campos Lindos/ Maraj�)'
45 'Cocalzinho de Goi�s (Sede, Girassol/Edil�ndia)'
46 'Formosa'
47 'Luzi�nia (Sede e Distritos)'
48 'Novo Gama'
49 'Padre Bernardo (Sede, Monte Alto)'
50 'Planaltina'
51 'Santo Ant�nio do Descoberto'
52 'Valpara�so de Goi�s'
53 'Outros munic�pios da RIDE'
54 'An�polis'
55 'Goi�nia'
56 'Outros locais'
88 'N�o sabe/n�o quis responder'
99 'N�o se aplica'.

variable labels PESO ' Peso do morador'.
variable labels PROJ_POP ' Proje��o da popula��o'.
variable labels pos_estrato ' Dom�nios de proje��o'.

 * FREQUENCIES VARIABLES=referencia municipio A01setor A01nficha A01npessoas D01 D02 D06 D03 D04 D05 
    D07 D08 D09 D10 D11 D12 D13 D14 D15 D16 D17 D18 D19 D20 D21 D22 E01 E02 E03 E04 E05 E06 E07 E08 E09 
    E10 E11 E12 E13 E14 E15 PESO PROJ_POP pos_estrato
  /ORDER=ANALYSIS.

dataset name base.
dataset activate base.

sort cases by referencia municipio A01setor A01nficha.

DATASET ACTIVATE base.
DATASET COPY  rf_2017.
DATASET ACTIVATE  rf_2017.
FILTER OFF.
USE ALL.
SELECT IF (any(referencia,2016,2017)).
EXECUTE.

SAVE TRANSLATE OUTFILE='C:\Users\kidlu\pmad_2018\versao_site\pmad_2017_moradores.csv'
  /TYPE=CSV
  /ENCODING='Locale'
  /MAP
  /REPLACE
  /FIELDNAMES
  /CELLS=VALUES
  /TEXTOPTIONS DELIMITER = '|' QUALIFIER = '"'.

dataset close rf_2017.
DATASET ACTIVATE base.
DATASET COPY  rf_2018.
DATASET ACTIVATE  rf_2018.
FILTER OFF.
USE ALL.
SELECT IF (referencia = 2018).
EXECUTE.

SAVE TRANSLATE OUTFILE='C:\Users\kidlu\pmad_2018\versao_site\pmad_2018_moradores.csv'
  /TYPE=CSV
  /ENCODING='Locale'
  /MAP
  /REPLACE
  /FIELDNAMES
  /CELLS=VALUES
  /TEXTOPTIONS DELIMITER = '|' QUALIFIER = '"'.

dataset close all.