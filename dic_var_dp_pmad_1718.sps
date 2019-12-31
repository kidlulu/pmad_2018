* Encoding: ISO-8859-1.

GET DATA
  /TYPE=ODBC
  /CONNECT='DSN=db_codeplan;UID=35866;PWD=4I#u({(r)u/t,}!n,/$,!!;'
  /SQL='SELECT * FROM DB_CODEPLAN.pmad2018.dp_dom_1718'
  /ASSUMEDSTRWIDTH=255.
CACHE.

variable labels municipio "Munic�pio pesquisado".
variable labels A01setor "Setor Pesquisado".
variable labels A01nficha "N�mero da ficha".
variable labels setorcensitario "N�mero do setor censit�rio".
variable labels A01nPessoas "Qtd. pessoas no domic�lio".
variable labels datavisita "Data da Entrevista".
variable labels B01 "B01 - Esp�cie do domic�lio".
variable labels B02 "B02 - Tipo do seu domic�lio".
variable labels B03 "B03 - Qual a situa��o do seu domic�lio?".
variable labels B04 "B04 - Se o im�vel for pr�prio em aquisi��o, qual o valor mensal pago ou que deveria ser pago da �ltima presta��o?".
variable labels B05 "B05 - Se o im�vel for alugado qual o �ltimo valor do aluguel pago ou que deveria ser pago?".
variable labels B06 "B06 - Condi��o Legal do Im�vel".
variable labels B07 "B07 - Quantos c�modos tem este domic�lio?".
variable labels B08 "B08 - Quantos c�modos est�o servindo permanentemente de dormit�rios neste domic�lio?".
variable labels B09 "B09 - Quantos banheiros e/ou sanit�rios t�m este domic�lio?".
variable labels B10 "B10 - Como � feito o abastecimento de �gua neste domic�lio?".
variable labels B11 "B11 - Consumo de �gua pot�vel".
variable labels B12 "B12 - Pratica a��es para fins de economizar �gua?".
variable labels B13 "B13 - Falta �gua?".
variable labels B14 "B14 - Como este domic�lio � abastecido por energia el�trica?".
variable labels B15 "B15 - Pratica a��es para fins de economizar Energia?".
variable labels B16 "B16 - Falta Energia?".
variable labels B17 "B17 - Esgotamento Sanit�rio?".
variable labels B18 "B18 - Coleta de Lixo?".
variable labels B191 "B191 - Rua asfaltada".
variable labels B192 "B192 - Cal�ada".
variable labels B193 "B193 - Meio Fio".
variable labels B194 "B194 - Ilumina��o p�blica".
variable labels B195 "B195 - Rede de �gua pluvial".
variable labels B201 "B201 - Eros�o".
variable labels B202 "B202 - �rea em declive".
variable labels B203 "B203 - Entulho".
variable labels B204 "B204 - Esgoto a c�u aberto".
variable labels B205 "B205 - �rea alagadas (chuva)".
variable labels B206 "B206 - Ruas esburacadas".
variable labels B211 "B211 - Tem ruas arborizadas".
variable labels B212 "B212 - Tem jardins/parques".
variable labels B213 "B213 - Tem �rea de preserva��o ambiental".
variable labels B214 "B214 - Tem nascente d��gua".
variable labels B215 "B215 - Ciclovia".
variable labels B216 "B216 - Tem espa�o cultural".
variable labels B217 "B217 - Academia comunit�ria".
variable labels B218 "B218 - Tem ponto de �nibus".
variable labels B22 "B22 - Participa��o Social?".
variable labels B231 "B231 - Usa espa�os das escolas, extraclasse".
variable labels B232 "B232 - Participa de campanhas e reuni�es".
variable labels B233 "B233 - Conhece o projeto pedag�gico".
variable labels B234 "B234 - Conhece o Desempenho das escolas (IBEB/Prova Brasil)".
variable labels C011 "C011 - Autom�veis (fabricados at� 1999)".
variable labels C012 "C012 - Autom�veis (2000 at� 2009)".
variable labels C013 "C013 - Autom�veis (2010 ou mais)".
variable labels C014 "C014 - Utilit�rio".
variable labels C015 "C015 - Carga".
variable labels C016 "C016 - Motocicleta".
variable labels C017 "C017 - Bicicleta".
variable labels C018 "C018 - Carro�a".
variable labels C019 "C019 - Outros".
variable labels C021 "C021 - No munic�pio".
variable labels C022 "C022 - No DF".
variable labels C023 "C023 - Outro Local".
variable labels C031 "C031 - Internet (Wifi e ou 3G/4G)".
variable labels C032 "C032 - TV por Assinatura".
variable labels C033 "C033 - Assinatura de jornais".
variable labels C034 "C034 - Assinatura de revistas".
variable labels C0401 "C0401 - Quantas Placas de energia/aquecedor solar?".
variable labels C0402 "C0402 - Quantos Ar condicionados?".
variable labels C0403 "C0403 - Quantos Circuladores de ar e/ou ventiladores?".
variable labels C0404 "C0404 - Quantos Fog�es?".
variable labels C0405 "C0405 - Quantos Fornos micro-ondas?".
variable labels C0406 "C0406 - Quantos Fornos el�tricos?".
variable labels C0407 "C0407 - Quantos Freezers?".
variable labels C0408 "C0408 - Quantas Geladeiras?".
variable labels C0409 "C0409 - Quantos Ipod e similares?".
variable labels C0410 "C0410 - Quantas M�quinas de lavar roupa?".
variable labels C0411 "C0411 - Quantas M�quinas de lavar lou�a?".
variable labels C0412 "C0412 - Quantas M�quinas de fotogr�fica digital?".
variable labels C0413 "C0413 - Quantos Microcomputadores/Desktop?".
variable labels C0414 "C0414 - Quantos Notebook/Laptop? ".
variable labels C0415 "C0415 - Quantos Tablets/Ipad?".
variable labels C0416 "C0416 - Quantos Tanquinhos el�tricos?".
variable labels C0417 "C0417 - Quantos Telefones fixos?".
variable labels C0418 "C0418 - Quantos Telefones celulares pr�-pago?".
variable labels C0419 "C0419 - Quantos Telefones celulares p�s-pago?".
variable labels C0420 "C0420 - Quantos Televisores (tubo)?".
variable labels C0421 "C0421 - Quantos Televisores tela fina/plana".
variable labels C0422 "C0422 - Quantos Umidificadores?".
variable labels C051 "C051 - Mensalista morador do domic�lio".
variable labels C052 "C052 - Mensalista n�o morador do domic�lio".
variable labels C053 "C053 - Diarista".
variable labels C061 "C061 - Locais de Compras da Fam�lia: Alimenta��o".
variable labels C062 "C062 - Local de compras de Roupas/cal�ados (Predominante)".
variable labels C063 "C063 - Local de compras de Eletrodom�sticos (Predominante)".
variable labels C064 "C064 - Local de compras de Servi�os pessoais (Predominante)".
variable labels C065 "C065 - Local de compras de Servi�os em geral (Predominante)".
variable labels C066 "C066 - Local de Cultura e lazer (Predominante)".
variable labels C07 "C07 - Exist�ncia de Bancos".
variable labels C08 "C08 - Em rela��o aos servi�os banc�rios".
variable labels C101 "C101 - Cite o primeiro banco que recordar".
variable labels C102 "C102 - Cite o segundo banco que recordar".
variable labels C103 "C103 - Cite o terceiro banco que recordar".
variable labels C104 "C104 - Cite o quarto banco que recordar".
variable labels C09 "C09 - Qual o servi�o � mais importante para a escolha do seu banco?".


value labels B01 1 "Permanente"
2 "Improvisado"
3 "Permanente em constru��o".
value labels B02 1 "Casa"
2 "Barraco"
3 " C�modo"
4 "Quitinete/Est�dio"
5 "Flat"
6 "Apartamento"
7 "Uso misto"
8 "Outros".
value labels B03 1 "Pr�prio j� pago (Quitado)"
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
value labels B04 77777 "Recusa"
88888 "N�o sabe"
99999 "N�o se aplica".
value labels B05 77777 "Recusa"
88888 "N�o sabe"
99999 "N�o se aplica".
value labels B06 0 "N�o tem im�vel pr�prio (Reside em um alugado, cedido ou funcional)"
1 "Escritura definitiva"
2 "Concess�o de uso"
3 "Contrato de financiamento particular"
4 "Contrato de financiamento governamental"
5 "Contrato de compra e venda (Cess�o de Direito)"
6 "Minha casa minha vida"
7 "Outros".
value labels B10 1 "Rede Geral"
2 "Po�o/Cisterna"
3 "Po�o Artesiano"
4 "Outros".
value labels B11 1 "N�o tem filtro"
2 "Filtro de barro"
3 "Filtro de parede"
4 "Filtro de carv�o ativado"
5 "�gua Mineral".
value labels B12 1 "N�o"
2 "Sim"
3 "N�o conta com Rede Geral"
88 "N�o sabe/n�o quis responder".
value labels B13 1 "N�o"
2 "Raramente"
3 "Frequentemente"
4 "N�o conta com Rede Geral"
88 "N�o sabe/n�o quis responder".
value labels B14 1 "Rede Geral"
2 "Pr�prio (gerador e bateria)"
3 "Gambiarra"
4 "Outros".
value labels B15 1 "N�o"
2 "Sim"
3 "N�o conta com Rede Geral"
88 "N�o sabe/n�o quis responder".
value labels B16 1 "N�o"
2 "Raramente"
3 "Frequentemente"
4 "N�o conta com Rede Geral"
88 "N�o sabe/n�o quis responder".
value labels B17 1 "Rede Geral"
2 "Fossa S�ptica"
3 "Fossa Rudimentar"
4 "Esgoto a c�u aberto"
5 "Outros".
value labels B18 1 "Sem coleta seletiva"
2 "Com coleta seletiva"
3 "Jogado em local impr�prio"
4 "Outro Destino".
value labels B191 0 "N�o"
1 "Sim".
value labels B192 0 "N�o"
1 "Sim".
value labels B193 0 "N�o"
1 "Sim".
value labels B194 0 "N�o"
1 "Sim".
value labels B195 0 "N�o"
1 "Sim".
value labels B201 0 "N�o"
1 "Sim".
value labels B202 0 "N�o"
1 "Sim".
value labels B203 0 "N�o"
1 "Sim".
value labels B204 0 "N�o"
1 "Sim".
value labels B205 0 "N�o"
1 "Sim".
value labels B206 0 "N�o"
1 "Sim".
value labels B211 0 "N�o"
1 "Sim".
value labels B212 0 "N�o"
1 "Sim".
value labels B213 0 "N�o"
1 "Sim".
value labels B214 0 "N�o"
1 "Sim".
value labels B215 0 "N�o"
1 "Sim".
value labels B216 0 "N�o"
1 "Sim".
value labels B217 0 "N�o"
1 "Sim".
value labels B218 0 "N�o"
1 "Sim".
value labels B22 0 "N�o participa"
1 "Conselhos"
2 "Sindicatos/Associa��es"
3 "Organiza��es/Entidade n�o governamentais"
4 "Cooperativas"
5 "Gr�mio Estudantil"
88 "N�o sabe/n�o quis responder".
value labels B231 0 "N�o"
1 "Sim"
88 "N�o sabe/n�o quis responder".
value labels B232 0 "N�o"
1 "Sim"
88 "N�o sabe/n�o quis responder".
value labels B233 0 "N�o"
1 "Sim"
88 "N�o sabe/n�o quis responder".
value labels B234 0 "N�o"
1 "Sim"
88 "N�o sabe/n�o quis responder".
value labels C031 77777 "N�o quis responder".
value labels C032 77777 "N�o quis responder".
value labels C033 77777 "N�o quis responder".
value labels C034 77777 "N�o quis responder".
value labels C0401 77777 "N�o quis responder".
value labels C0402 77777 "N�o quis responder".
value labels C0403 77777 "N�o quis responder".
value labels C0404 77777 "N�o quis responder".
value labels C0405 77777 "N�o quis responder".
value labels C0406 77777 "N�o quis responder".
value labels C0407 77777 "N�o quis responder".
value labels C0408 77777 "N�o quis responder".
value labels C0409 77777 "N�o quis responder".
value labels C0410 77777 "N�o quis responder".
value labels C0411 77777 "N�o quis responder".
value labels C0412 77777 "N�o quis responder".
value labels C0413 77777 "N�o quis responder".
value labels C0414 77777 "N�o quis responder".
value labels C0415 77777 "N�o quis responder".
value labels C0416 77777 "N�o quis responder".
value labels C0417 77777 "N�o quis responder".
value labels C0418 77777 "N�o quis responder".
value labels C0419 77777 "N�o quis responder".
value labels C0420 77777 "N�o quis responder".
value labels C0421 77777 "N�o quis responder".
value labels C0422 77777 "N�o quis responder".
value labels C051 77777 "N�o quis responder".
value labels C052 77777 "N�o quis responder".
value labels C053 77777 "N�o quis responder".
value labels C061 0 "N�o compra"
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
value labels C062 0 "N�o compra"
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
44 "Cristalina (Sede, Campos Lindos/Maraj�)"
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
value labels C063 0 "N�o compra"
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
41 "Aguas Lindas de Goi�s"
42 "Alex�nia"
43 "Cidade Ocidental (Sede e ABC)"
44 "Cristalina (Sede, Campos Lindos/Maraj�)"
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
value labels C064 0 "N�o compra"
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
41 "Aguas Lindas de Goi�s"
42 "Alex�nia"
43 "Cidade Ocidental (Sede e ABC)"
44 "Cristalina (Sede, Campos Lindos/Maraj�)"
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
value labels C065 0 "N�o compra"
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
41 "Aguas Lindas de Goi�s"
42 "Alex�nia"
43 "Cidade Ocidental (Sede e ABC)"
44 "Cristalina (Sede, Campos Lindos/Maraj�)"
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
value labels C066 0 "N�o compra"
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
41 "Aguas Lindas de Goi�s"
42 "Alex�nia"
43 "Cidade Ocidental (Sede e ABC)"
44 "Cristalina (Sede, Campos Lindos/Maraj�)"
45 "Cocalzinho de Goi�s (Sede, Girassol / Edil�ndia)"
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
value labels C07 1 "Existem v�rios na regi�o"
2 "N�o tem banco"
3 "N�o h� bancos suficientes"
88 "N�o sabe/n�o quis responder".
value labels C08 1 "Utilizo v�rios bancos"
2 "Utilizo apenas um banco"
3 "Uso os canais eletr�nicos"
4 "N�o uso porque considero os servi�os/produtos/taxas insatisfat�rios"
88 "N�o sabe/n�o quis responder".
value labels C09 1 "Cart�o de Cr�dito"
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
value labels C101 1 "Bradesco"
2 "Banco Regional de Bras�lia"
3 "Banco do Brasil"
4 "Caixa Econ�mica Federal"
5 "Ita�"
6 "Safra"
7 "Santander"
8 "Outros"
88 "N�o sabe/n�o quis responder"
99 "N�o se aplica".
value labels C102 1 "Bradesco"
2 "Banco Regional de Bras�lia"
3 "Banco do Brasil"
4 "Caixa Econ�mica Federal"
5 "Ita�"
6 "Safra"
7 "Santander"
8 "Outros"
88 "N�o sabe/n�o quis responder"
99 "N�o se aplica".
value labels C103 1 "Bradesco"
2 "Banco Regional de Bras�lia"
3 "Banco do Brasil"
4 "Caixa Econ�mica Federal"
5 "Ita�"
6 "Safra"
7 "Santander"
8 "Outros"
88 "N�o sabe/n�o quis responder"
99 "N�o se aplica".
value labels C104 1 "Bradesco"
2 "Banco Regional de Bras�lia"
3 "Banco do Brasil"
4 "Caixa Econ�mica Federal"
5 "Ita�"
6 "Safra"
7 "Santander"
8 "Outros"
88 "N�o sabe/n�o quis responder"
99 "N�o se aplica".
FREQUENCIES VARIABLES=referencia FATOR_MUN municipio A01setor A01nficha setorcensitario A01nPessoas 
    datavisita B01 B02 B03 B04 B05 B06 B07 B08 B09 B10 B11 B12 B13 B14 B15 B16 B17 B18 B191 B192 B193 
    B194 B195 B201 B202 B203 B204 B205 B206 B211 B212 B213 B214 B215 B216 B217 B218 B22 B231 B232 B233 
    B234 C011 C012 C013 C014 C015 C016 C017 C018 C019 C021 C022 C023 C031 C032 C033 C034 C0401 C0402 
    C0403 C0404 C0405 C0406 C0407 C0408 C0409 C0410 C0411 C0412 C0413 C0414 C0415 C0416 C0417 C0418 
    C0419 C0420 C0421 C0422 C051 C052 C053 C061 C062 C063 C064 C065 C066 C07 C08 C09 C101 C102 C103 
    C104 peso_pre pop_proj
  /ORDER=ANALYSIS.