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
DISPLAY DICTIONARY.
EXECUTE.
FREQUENCIES VARIABLES=referencia FATOR_MUN municipio A01setor A01nficha setorcensitario A01nPessoas 
    datavisita B01 B02 B03 B04 B05 B06 B07 B08 B09 B10 B11 B12 B13 B14 B15 B16 B17 B18 B191 B192 B193 
    B194 B195 B201 B202 B203 B204 B205 B206 B211 B212 B213 B214 B215 B216 B217 B218 B22 B231 B232 B233 
    B234 C011 C012 C013 C014 C015 C016 C017 C018 C019 C021 C022 C023 C031 C032 C033 C034 C0401 C0402 
    C0403 C0404 C0405 C0406 C0407 C0408 C0409 C0410 C0411 C0412 C0413 C0414 C0415 C0416 C0417 C0418 
    C0419 C0420 C0421 C0422 C051 C052 C053 C061 C062 C063 C064 C065 C066 C07 C08 C09 C101 C102 C103 
    C104 peso_pre pop_proj
  /ORDER=ANALYSIS.
save outfile = '/tmp/dp_dom_1718.sav' /compressed.

get file = '/tmp/dp_dom_1718.sav'.

select if municipio = '�guas Lindas de Goi�s'.

SAVE TRANSLATE OUTFILE='/tmp/aguas_lindas_de_goias_domicilios.csv'
  /TYPE=CSV /ENCODING='LOCALE' /MAP /REPLACE /FIELDNAMES /CELLS=VALUES /TEXTOPTIONS DELIMITER=';' DECIMAL = COMMA
  /keep = referencia municipio A01setor A01nficha A01nPessoas datavisita B01 B02 B03 B04 B05 B06 
B07 B08 B09 B10 B11 B12 B13 B14 B15 B16 B17 B18 B191 B192 B193 B194 B195 B201 B202 B203 B204 
B205 B206 B211 B212 B213 B214 B215 B216 B217 B218 B22 B231 B232 B233 B234 C011 C012 C013 C014 
C015 C016 C017 C018 C019 C021 C022 C023 C031 C032 C033 C034 C0401 C0402 C0403 C0404 C0405 C0406 
C0407 C0408 C0409 C0410 C0411 C0412 C0413 C0414 C0415 C0416 C0417 C0418 C0419 C0420 C0421 C0422 
C051 C052 C053 C061 C062 C063 C064 C065 C066 C07 C08 C09 C101 C102 C103 C104 FATOR_MUN.

get file = '/tmp/dp_dom_1718.sav'.

select if municipio = 'Alex�nia'.

SAVE TRANSLATE OUTFILE='/tmp/alexania_domicilios.csv'
  /TYPE=CSV /ENCODING='LOCALE' /MAP /REPLACE /FIELDNAMES /CELLS=VALUES /TEXTOPTIONS DELIMITER=';' DECIMAL = COMMA
  /keep = referencia municipio A01setor A01nficha A01nPessoas datavisita B01 B02 B03 B04 B05 B06 
B07 B08 B09 B10 B11 B12 B13 B14 B15 B16 B17 B18 B191 B192 B193 B194 B195 B201 B202 B203 B204 
B205 B206 B211 B212 B213 B214 B215 B216 B217 B218 B22 B231 B232 B233 B234 C011 C012 C013 C014 
C015 C016 C017 C018 C019 C021 C022 C023 C031 C032 C033 C034 C0401 C0402 C0403 C0404 C0405 C0406 
C0407 C0408 C0409 C0410 C0411 C0412 C0413 C0414 C0415 C0416 C0417 C0418 C0419 C0420 C0421 C0422 
C051 C052 C053 C061 C062 C063 C064 C065 C066 C07 C08 C09 C101 C102 C103 C104 FATOR_MUN.

get file = '/tmp/dp_dom_1718.sav'.

select if municipio = 'Cidade Ocidental'.

SAVE TRANSLATE OUTFILE='/tmp/cidade_ocidental_domicilios.csv'
  /TYPE=CSV /ENCODING='LOCALE' /MAP /REPLACE /FIELDNAMES /CELLS=VALUES /TEXTOPTIONS DELIMITER=';' DECIMAL = COMMA
  /keep = referencia municipio A01setor A01nficha A01nPessoas datavisita B01 B02 B03 B04 B05 B06 
B07 B08 B09 B10 B11 B12 B13 B14 B15 B16 B17 B18 B191 B192 B193 B194 B195 B201 B202 B203 B204 
B205 B206 B211 B212 B213 B214 B215 B216 B217 B218 B22 B231 B232 B233 B234 C011 C012 C013 C014 
C015 C016 C017 C018 C019 C021 C022 C023 C031 C032 C033 C034 C0401 C0402 C0403 C0404 C0405 C0406 
C0407 C0408 C0409 C0410 C0411 C0412 C0413 C0414 C0415 C0416 C0417 C0418 C0419 C0420 C0421 C0422 
C051 C052 C053 C061 C062 C063 C064 C065 C066 C07 C08 C09 C101 C102 C103 C104 FATOR_MUN.

get file = '/tmp/dp_dom_1718.sav'.

select if municipio = 'Cocalzinho de Goi�s'.

SAVE TRANSLATE OUTFILE='/tmp/cocalzinho_de_goias_domicilios.csv'
  /TYPE=CSV /ENCODING='LOCALE' /MAP /REPLACE /FIELDNAMES /CELLS=VALUES /TEXTOPTIONS DELIMITER=';' DECIMAL = COMMA
  /keep = referencia municipio A01setor A01nficha A01nPessoas datavisita B01 B02 B03 B04 B05 B06 
B07 B08 B09 B10 B11 B12 B13 B14 B15 B16 B17 B18 B191 B192 B193 B194 B195 B201 B202 B203 B204 
B205 B206 B211 B212 B213 B214 B215 B216 B217 B218 B22 B231 B232 B233 B234 C011 C012 C013 C014 
C015 C016 C017 C018 C019 C021 C022 C023 C031 C032 C033 C034 C0401 C0402 C0403 C0404 C0405 C0406 
C0407 C0408 C0409 C0410 C0411 C0412 C0413 C0414 C0415 C0416 C0417 C0418 C0419 C0420 C0421 C0422 
C051 C052 C053 C061 C062 C063 C064 C065 C066 C07 C08 C09 C101 C102 C103 C104 FATOR_MUN.

get file = '/tmp/dp_dom_1718.sav'.

select if municipio = 'Cristalina'.

SAVE TRANSLATE OUTFILE='/tmp/cristalina_domicilios.csv'
  /TYPE=CSV /ENCODING='LOCALE' /MAP /REPLACE /FIELDNAMES /CELLS=VALUES /TEXTOPTIONS DELIMITER=';' DECIMAL = COMMA
  /keep = referencia municipio A01setor A01nficha A01nPessoas datavisita B01 B02 B03 B04 B05 B06 
B07 B08 B09 B10 B11 B12 B13 B14 B15 B16 B17 B18 B191 B192 B193 B194 B195 B201 B202 B203 B204 
B205 B206 B211 B212 B213 B214 B215 B216 B217 B218 B22 B231 B232 B233 B234 C011 C012 C013 C014 
C015 C016 C017 C018 C019 C021 C022 C023 C031 C032 C033 C034 C0401 C0402 C0403 C0404 C0405 C0406 
C0407 C0408 C0409 C0410 C0411 C0412 C0413 C0414 C0415 C0416 C0417 C0418 C0419 C0420 C0421 C0422 
C051 C052 C053 C061 C062 C063 C064 C065 C066 C07 C08 C09 C101 C102 C103 C104 FATOR_MUN.

get file = '/tmp/dp_dom_1718.sav'.

select if municipio = 'Formosa'.

SAVE TRANSLATE OUTFILE='/tmp/formosa_domicilios.csv'
  /TYPE=CSV /ENCODING='LOCALE' /MAP /REPLACE /FIELDNAMES /CELLS=VALUES /TEXTOPTIONS DELIMITER=';' DECIMAL = COMMA
  /keep = referencia municipio A01setor A01nficha A01nPessoas datavisita B01 B02 B03 B04 B05 B06 
B07 B08 B09 B10 B11 B12 B13 B14 B15 B16 B17 B18 B191 B192 B193 B194 B195 B201 B202 B203 B204 
B205 B206 B211 B212 B213 B214 B215 B216 B217 B218 B22 B231 B232 B233 B234 C011 C012 C013 C014 
C015 C016 C017 C018 C019 C021 C022 C023 C031 C032 C033 C034 C0401 C0402 C0403 C0404 C0405 C0406 
C0407 C0408 C0409 C0410 C0411 C0412 C0413 C0414 C0415 C0416 C0417 C0418 C0419 C0420 C0421 C0422 
C051 C052 C053 C061 C062 C063 C064 C065 C066 C07 C08 C09 C101 C102 C103 C104 FATOR_MUN.

get file = '/tmp/dp_dom_1718.sav'.

select if municipio = 'Luzi�nia'.

SAVE TRANSLATE OUTFILE='/tmp/luziania_domicilios.csv'
  /TYPE=CSV /ENCODING='LOCALE' /MAP /REPLACE /FIELDNAMES /CELLS=VALUES /TEXTOPTIONS DELIMITER=';' DECIMAL = COMMA
  /keep = referencia municipio A01setor A01nficha A01nPessoas datavisita B01 B02 B03 B04 B05 B06 
B07 B08 B09 B10 B11 B12 B13 B14 B15 B16 B17 B18 B191 B192 B193 B194 B195 B201 B202 B203 B204 
B205 B206 B211 B212 B213 B214 B215 B216 B217 B218 B22 B231 B232 B233 B234 C011 C012 C013 C014 
C015 C016 C017 C018 C019 C021 C022 C023 C031 C032 C033 C034 C0401 C0402 C0403 C0404 C0405 C0406 
C0407 C0408 C0409 C0410 C0411 C0412 C0413 C0414 C0415 C0416 C0417 C0418 C0419 C0420 C0421 C0422 
C051 C052 C053 C061 C062 C063 C064 C065 C066 C07 C08 C09 C101 C102 C103 C104 FATOR_MUN.

get file = '/tmp/dp_dom_1718.sav'.

select if municipio = 'Novo Gama'.

SAVE TRANSLATE OUTFILE='/tmp/novo_gama_domicilios.csv'
  /TYPE=CSV /ENCODING='LOCALE' /MAP /REPLACE /FIELDNAMES /CELLS=VALUES /TEXTOPTIONS DELIMITER=';' DECIMAL = COMMA
  /keep = referencia municipio A01setor A01nficha A01nPessoas datavisita B01 B02 B03 B04 B05 B06 
B07 B08 B09 B10 B11 B12 B13 B14 B15 B16 B17 B18 B191 B192 B193 B194 B195 B201 B202 B203 B204 
B205 B206 B211 B212 B213 B214 B215 B216 B217 B218 B22 B231 B232 B233 B234 C011 C012 C013 C014 
C015 C016 C017 C018 C019 C021 C022 C023 C031 C032 C033 C034 C0401 C0402 C0403 C0404 C0405 C0406 
C0407 C0408 C0409 C0410 C0411 C0412 C0413 C0414 C0415 C0416 C0417 C0418 C0419 C0420 C0421 C0422 
C051 C052 C053 C061 C062 C063 C064 C065 C066 C07 C08 C09 C101 C102 C103 C104 FATOR_MUN.

get file = '/tmp/dp_dom_1718.sav'.

select if municipio = 'Padre Bernardo'.

SAVE TRANSLATE OUTFILE='/tmp/padre_bernardo_domicilios.csv'
  /TYPE=CSV /ENCODING='LOCALE' /MAP /REPLACE /FIELDNAMES /CELLS=VALUES /TEXTOPTIONS DELIMITER=';' DECIMAL = COMMA
  /keep = referencia municipio A01setor A01nficha A01nPessoas datavisita B01 B02 B03 B04 B05 B06 
B07 B08 B09 B10 B11 B12 B13 B14 B15 B16 B17 B18 B191 B192 B193 B194 B195 B201 B202 B203 B204 
B205 B206 B211 B212 B213 B214 B215 B216 B217 B218 B22 B231 B232 B233 B234 C011 C012 C013 C014 
C015 C016 C017 C018 C019 C021 C022 C023 C031 C032 C033 C034 C0401 C0402 C0403 C0404 C0405 C0406 
C0407 C0408 C0409 C0410 C0411 C0412 C0413 C0414 C0415 C0416 C0417 C0418 C0419 C0420 C0421 C0422 
C051 C052 C053 C061 C062 C063 C064 C065 C066 C07 C08 C09 C101 C102 C103 C104 FATOR_MUN.

get file = '/tmp/dp_dom_1718.sav'.

select if municipio = 'Planaltina'.

SAVE TRANSLATE OUTFILE='/tmp/planaltina_domicilios.csv'
  /TYPE=CSV /ENCODING='LOCALE' /MAP /REPLACE /FIELDNAMES /CELLS=VALUES /TEXTOPTIONS DELIMITER=';' DECIMAL = COMMA
  /keep = referencia municipio A01setor A01nficha A01nPessoas datavisita B01 B02 B03 B04 B05 B06 
B07 B08 B09 B10 B11 B12 B13 B14 B15 B16 B17 B18 B191 B192 B193 B194 B195 B201 B202 B203 B204 
B205 B206 B211 B212 B213 B214 B215 B216 B217 B218 B22 B231 B232 B233 B234 C011 C012 C013 C014 
C015 C016 C017 C018 C019 C021 C022 C023 C031 C032 C033 C034 C0401 C0402 C0403 C0404 C0405 C0406 
C0407 C0408 C0409 C0410 C0411 C0412 C0413 C0414 C0415 C0416 C0417 C0418 C0419 C0420 C0421 C0422 
C051 C052 C053 C061 C062 C063 C064 C065 C066 C07 C08 C09 C101 C102 C103 C104 FATOR_MUN.

get file = '/tmp/dp_dom_1718.sav'.

select if municipio = 'Santo Ant�nio do Descoberto'.

SAVE TRANSLATE OUTFILE='/tmp/santo_antonio_do_descoberto_domicilios.csv'
  /TYPE=CSV /ENCODING='LOCALE' /MAP /REPLACE /FIELDNAMES /CELLS=VALUES /TEXTOPTIONS DELIMITER=';' DECIMAL = COMMA
  /keep = referencia municipio A01setor A01nficha A01nPessoas datavisita B01 B02 B03 B04 B05 B06 
B07 B08 B09 B10 B11 B12 B13 B14 B15 B16 B17 B18 B191 B192 B193 B194 B195 B201 B202 B203 B204 
B205 B206 B211 B212 B213 B214 B215 B216 B217 B218 B22 B231 B232 B233 B234 C011 C012 C013 C014 
C015 C016 C017 C018 C019 C021 C022 C023 C031 C032 C033 C034 C0401 C0402 C0403 C0404 C0405 C0406 
C0407 C0408 C0409 C0410 C0411 C0412 C0413 C0414 C0415 C0416 C0417 C0418 C0419 C0420 C0421 C0422 
C051 C052 C053 C061 C062 C063 C064 C065 C066 C07 C08 C09 C101 C102 C103 C104 FATOR_MUN.

get file = '/tmp/dp_dom_1718.sav'.

select if municipio = 'Valpara�so de Goi�s'.

SAVE TRANSLATE OUTFILE='/tmp/valparaiso_de_goias_domicilios.csv'
  /TYPE=CSV /ENCODING='LOCALE' /MAP /REPLACE /FIELDNAMES /CELLS=VALUES /TEXTOPTIONS DELIMITER=';' DECIMAL = COMMA
  /keep = referencia municipio A01setor A01nficha A01nPessoas datavisita B01 B02 B03 B04 B05 B06 
B07 B08 B09 B10 B11 B12 B13 B14 B15 B16 B17 B18 B191 B192 B193 B194 B195 B201 B202 B203 B204 
B205 B206 B211 B212 B213 B214 B215 B216 B217 B218 B22 B231 B232 B233 B234 C011 C012 C013 C014 
C015 C016 C017 C018 C019 C021 C022 C023 C031 C032 C033 C034 C0401 C0402 C0403 C0404 C0405 C0406 
C0407 C0408 C0409 C0410 C0411 C0412 C0413 C0414 C0415 C0416 C0417 C0418 C0419 C0420 C0421 C0422 
C051 C052 C053 C061 C062 C063 C064 C065 C066 C07 C08 C09 C101 C102 C103 C104 FATOR_MUN.

*aqui.

GET DATA
  /TYPE=ODBC
  /CONNECT='DSN=db_codeplan;UID=35866;PWD=4I#u({(r)u/t,}!n,/$,!!;'
  /SQL='SELECT * FROM DB_CODEPLAN.pmad2018.dp_mor_1718'
  /ASSUMEDSTRWIDTH=255.
CACHE.

variable labels municipio "Munic�pio pesquisado".
variable labels A01setor "A01setor - Setor Pesquisado".
variable labels A01nficha "A01nficha - N�mero da ficha".
variable labels A01nPessoas "A01nPessoas - Qtd. pessoas no domic�lio".
variable labels D02 "D02 - Qual a condi��o do morador no domic�lio?".
variable labels D06 "D06 - Responsabilidade compartilhada".
variable labels D03 "D03 - Sexo".
variable labels D04 "D04 - Cor ou Ra�a".
variable labels D05 "D05 - Idade".
variable labels D07 "D07 - Qual o seu Estado Civil?".
variable labels D08 "D08 - Qual a Religi�o?".
variable labels D09 "D09 - Frequ�ncia Religiosa".
variable labels D10 "D10 - Qual a sua naturalidade? (Unidade da Federa��o onde nasceu)".
variable labels D11 "D11 - Para os nascidos no DF, onde a fam�lia morava na �poca do nascimento?".
variable labels D12 "D12 - Em que ano chegou ao munic�pio?".
variable labels D13 "D13 - De onde veio para o munic�pio? (Unidades da Federa��o)".
variable labels D14 "D14 - Por que veio?".
variable labels D15 "D15 - H� quanto tempo mora ininterruptamente no munic�pio?".
variable labels D16 "D16 - Acesso � Internet (Predominante)".
variable labels D17 "D17 - O Sr(a). tem plano de sa�de?".
variable labels D18 "D18 - Utiliza hospital p�blico?".
variable labels D19 "D19 - Utiliza posto de sa�de?".
variable labels D20 "D20 - Qual o tipo viol�ncia mais recente que sofreu nos �ltimos 12 meses".
variable labels D21 "D21 - Local da viol�ncia?".
variable labels D22 "D22 - Registrou queixa do ocorrido?".
variable labels E01 "E01 - Frequenta escola ou creche regular?".
variable labels E02 "E02 - Local onde estuda?".
variable labels E03 "E03 - Qual seu n�vel de escolaridade?".
variable labels E04 "E04 - S�rie/Ano/Semestre conclu�do?".
variable labels E05 "E05 - Atualmente o Sr(a) est� fazendo outro curso?".
variable labels E06 "E06 - Qual a sua situa��o de atividade?".
variable labels E07 "E07 - Qual setor da atividade remunerada?".
variable labels E08 "E08 - Qual a sua posi��o de ocupa��o?".
variable labels E09 "E09 - Local onde trabalha?".
variable labels E10 "E10 - Quanto tempo o Sr(a) gasta de casa at� o seu trabalho?".
variable labels E11 "E11 - Quais modos de transporte o Sr(a) utliza para ir  para o trabalho?".
variable labels E14 "E14 - O Sr(a) contribui para a Previd�ncia Social P�blica (INSS)?".
variable labels E15 "E15 - Local onde utiliza os servi�os banc�rios?".
variable labels E12 "E12 - Quanto o Sr(a) recebeu no m�s passado do Trabalho Principal (em R$, sem centavos)".
variable labels E13 "E13 - Quanto o Sr(a) recebeu no m�s passado dos outros Rendimentos (em R$, sem centavos)".
value labels D02 1 "Pessoa respons�vel pelo domic�lio"
2 "C�njuge ou companheiro(a) de sexo diferente"
3 "C�njuge ou companheiro(a) do mesmo sexo"
4 "Filho(a)"
5 "Enteado"
6 "Outro parente"
7 "Agregado(a)"
8 "Pensionista"
9 "Empregado(a) dom�stico(a)"
10 "Outros".
value labels D06 0 "N�o"
1 "Sim"
99 "N�o se aplica".
value labels D03 1 "Masculino"
2 "Feminino".
value labels D04 1 "Branca"
2 "Preta"
3 "Amarela"
4 "Parda"
5 "Ind�gena"
8 "N�o sabe/n�o quis responder".
value labels D05 0 "Menor de 1 ano".
value labels D07 1 "Solteiro"
2 "Casado Civil"
3 "Casado Religioso"
4 "Civil e Religioso"
5 "Divorciado"
6 "Separado"
7 "Uni�o est�vel"
8 "Vi�vo"
88 "N�o sabe"
99 "N�o se aplica".
value labels D08 0 "N�o tem religi�o"
1 "Cat�lica"
2 "Evang�lica tradicional"
3 "Evang�lica pentecostal"
4 "Esp�rita"
5 "Oriental"
6 "Origem Afro"
7 "Outras"
8 "N�o sabe/N�o quis responder".
value labels D09 0 "N�o frequenta"
1 "Praticante regular"
2 "Praticante eventual"
88 "N�o sabe/n�o quis responder"
99 "N�o se aplica".
value labels D10 1 "Distrito Federal"
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
value labels D11 1 "No DF"
2 "No munic�pio"
3 "Outro munic�pio da PMB"
4 "Em outro local"
88 "N�o sabe/N�o quis responder"
99 "N�o se aplica".
value labels D12 8888 "N�o sabe"
9999 "N�o se aplica".
value labels D13 1 "Distrito Federal"
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
99 "Nascidos no munic�pio".
value labels D14 1 "Acompanhar Parentes/Reuni�o Familiar"
2 "Estudo e ou escola"
3 "Aquisi��o moradia"
4 "Programa de Governo para Moradia"
5 "Transfer�ncia de trabalho"
6 "Procura de Trabalho"
7 "Melhor acesso aos servi�os de sa�de"
8 "Mudan�a de estado civil"
9 "Outros Motivos"
88 "N�o sabe"
99 "Nascidos no munic�pio".
value labels D15 888 "N�o sabe/n�o quis responder"
999 "N�o se aplica".
value labels D16 0 "N�o acessa"
1 "Computador de casa"
2 "Computador do trabalho"
3 "Celular"
4 "Tablet"
5 "Lan House"
88 "N�o sabe/n�o quis responder".
value labels D17 0 "N�o possui"
1 "Empresarial"
2 "Particular"
88 "N�o sabe/n�o quis responder".
value labels D18 0 "N�o utiliza"
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
value labels D19 0 "N�o utiliza"
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
value labels D20 0 "N�o sofreu"
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
value labels D21 1 "Na sua casa"
2 "Na casa de algum parente ou amigo"
3 "Andando na rua"
4 "No local de trabalho"
5 "Meios de transporte (�nibus, metr�, trem, t�xi, lota��o, carro, etc.)"
6 "Locais p�blicos internos (banco, escola, shopping, restaurantes, bar, loja, etc)"
7 "Locais p�blicos externos (pra�a, parque, jardim, etc)"
88 "N�o sabe/n�o lembra"
99 "N�o se aplica".
value labels D22 1 "N�o denunciou"
2 "Sim na Pol�cia Militar"
3 "Sim na Pol�cia Civil"
4 "Sim na Pol�cia Rodovi�ria Federal"
5 "Sim outra"
88 "N�o sabe/n�o lembra"
99 "N�o se aplica".
value labels E01 0 "N�o"
1 "Escola p�blica"
2 "Escola particular"
3 "A dist�ncia p�blica"
4 "A dist�ncia particular"
88 "N�o sabe".
value labels E02 1 "Plano Piloto"
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
value labels E03 1 "Analfabeto (15 anos e mais)"
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
value labels E04 1 "Primeira(o)"
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
value labels E05 0 "N�o faz"
1 "Preparat�rio para concurso"
2 "Preparat�rio para vestibular/Enem"
3 "Preparat�rio para concurso e vestibular/Enem"
4 "Pronatec"
5 "L�nguas"
6 "Outros"
88 "N�o sabe"
99 "N�o se aplica".
value labels E06 0 "N�o tem atividade"
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
value labels E07 1 "Agricultura, Pecu�ria, Produ��o Florestal, Pesca e Aquicultura"
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
value labels E08 1 "Empregado com CTPS"
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
value labels E09 1 "Plano Piloto"
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
value labels E10 1 "At� 20 minutos"
2 "Entre 20 e 40 minutos"
3 "Entre 40 minutos e 1 hora"
4 "Entre 1 hora e 1 hora e meia"
5 "Entre 1 hora e meia e 2 horas"
6 "De 2 horas a 3 horas"
7 "Acima de 3 horas"
88 "N�o sabe/n�o quis responder"
99 "N�o se aplica".
value labels E11 1 "�nibus"
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
value labels E14 0 "N�o trabalha"
1 "Trabalha, mas n�o contribui"
2 "P�blica"
3 "Privada"
4 "P�blica e privada"
88 "N�o sabe"
99 "N�o se aplica".
value labels E15 0 "N�o utiliza servi�os banc�rios"
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
value labels E12 77777 "Recusa"
88888 "N�o sabe"
99999 "N�o se aplica".
value labels E13 77777 "Recusa"
88888 "N�o sabe"
99999 "N�o se aplica".
DISPLAY DICTIONARY.
EXECUTE.


FREQUENCIES VARIABLES=referencia municipio A01setor A01nficha A01nPessoas D02 D06 D03 D04 D05 D07 
    D08 D09 D10 D11 D12 D13 D14 D15 D16 D17 D18 D19 D20 D21 D22 E01 E02 E03 E04 E05 E06 E07 E08 E09 E10 
    E11 E12 E13 E14 E15
  /ORDER=ANALYSIS.


save outfile = '/tmp/dp_mor_1718.sav' /compressed.

get file = '/tmp/dp_mor_1718.sav'.

select if municipio = '�guas Lindas de Goi�s'.

SAVE TRANSLATE OUTFILE='/tmp/aguas_lindas_de_goias_moradores.csv'
  /TYPE=CSV /ENCODING='LOCALE' /MAP /REPLACE /FIELDNAMES /CELLS=VALUES /TEXTOPTIONS DELIMITER=';' DECIMAL = COMMA
  /keep = referencia municipio A01setor A01nficha A01nPessoas D02 D06 D03 D04 D05 D07 D08 D09 D10 D11 D12 D13 
D14 D15 D16 D17 D18 D19 D20 D21 D22 E01 E02 E03 E04 E05 E06 E07 E08 E09 E10 E11 E12 E13 E14 E15.

get file = '/tmp/dp_mor_1718.sav'.

select if municipio = 'Alex�nia'.

SAVE TRANSLATE OUTFILE='/tmp/alexania_moradores.csv'
  /TYPE=CSV /ENCODING='LOCALE' /MAP /REPLACE /FIELDNAMES /CELLS=VALUES /TEXTOPTIONS DELIMITER=';' DECIMAL = COMMA
  /keep = referencia municipio A01setor A01nficha A01nPessoas D02 D06 D03 D04 D05 D07 D08 D09 D10 D11 D12 D13 
D14 D15 D16 D17 D18 D19 D20 D21 D22 E01 E02 E03 E04 E05 E06 E07 E08 E09 E10 E11 E12 E13 E14 E15.

get file = '/tmp/dp_mor_1718.sav'.

select if municipio = 'Cidade Ocidental'.

SAVE TRANSLATE OUTFILE='/tmp/cidade_ocidental_moradores.csv'
  /TYPE=CSV /ENCODING='LOCALE' /MAP /REPLACE /FIELDNAMES /CELLS=VALUES /TEXTOPTIONS DELIMITER=';' DECIMAL = COMMA
  /keep = referencia municipio A01setor A01nficha A01nPessoas D02 D06 D03 D04 D05 D07 D08 D09 D10 D11 D12 D13 
D14 D15 D16 D17 D18 D19 D20 D21 D22 E01 E02 E03 E04 E05 E06 E07 E08 E09 E10 E11 E12 E13 E14 E15.

get file = '/tmp/dp_mor_1718.sav'.

select if municipio = 'Cocalzinho de Goi�s'.

SAVE TRANSLATE OUTFILE='/tmp/cocalzinho_de_goias_moradores.csv'
  /TYPE=CSV /ENCODING='LOCALE' /MAP /REPLACE /FIELDNAMES /CELLS=VALUES /TEXTOPTIONS DELIMITER=';' DECIMAL = COMMA
  /keep = referencia municipio A01setor A01nficha A01nPessoas D02 D06 D03 D04 D05 D07 D08 D09 D10 D11 D12 D13 
D14 D15 D16 D17 D18 D19 D20 D21 D22 E01 E02 E03 E04 E05 E06 E07 E08 E09 E10 E11 E12 E13 E14 E15.

get file = '/tmp/dp_mor_1718.sav'.

select if municipio = 'Cristalina'.

SAVE TRANSLATE OUTFILE='/tmp/cristalina_moradores.csv'
  /TYPE=CSV /ENCODING='LOCALE' /MAP /REPLACE /FIELDNAMES /CELLS=VALUES /TEXTOPTIONS DELIMITER=';' DECIMAL = COMMA
  /keep = referencia municipio A01setor A01nficha A01nPessoas D02 D06 D03 D04 D05 D07 D08 D09 D10 D11 D12 D13 
D14 D15 D16 D17 D18 D19 D20 D21 D22 E01 E02 E03 E04 E05 E06 E07 E08 E09 E10 E11 E12 E13 E14 E15.

get file = '/tmp/dp_mor_1718.sav'.

select if municipio = 'Formosa'.

SAVE TRANSLATE OUTFILE='/tmp/formosa_moradores.csv'
  /TYPE=CSV /ENCODING='LOCALE' /MAP /REPLACE /FIELDNAMES /CELLS=VALUES /TEXTOPTIONS DELIMITER=';' DECIMAL = COMMA
  /keep = referencia municipio A01setor A01nficha A01nPessoas D02 D06 D03 D04 D05 D07 D08 D09 D10 D11 D12 D13 
D14 D15 D16 D17 D18 D19 D20 D21 D22 E01 E02 E03 E04 E05 E06 E07 E08 E09 E10 E11 E12 E13 E14 E15.

get file = '/tmp/dp_mor_1718.sav'.

select if municipio = 'Luzi�nia'.

SAVE TRANSLATE OUTFILE='/tmp/luziania_moradores.csv'
  /TYPE=CSV /ENCODING='LOCALE' /MAP /REPLACE /FIELDNAMES /CELLS=VALUES /TEXTOPTIONS DELIMITER=';' DECIMAL = COMMA
  /keep = referencia municipio A01setor A01nficha A01nPessoas D02 D06 D03 D04 D05 D07 D08 D09 D10 D11 D12 D13 
D14 D15 D16 D17 D18 D19 D20 D21 D22 E01 E02 E03 E04 E05 E06 E07 E08 E09 E10 E11 E12 E13 E14 E15.

get file = '/tmp/dp_mor_1718.sav'.

select if municipio = 'Novo Gama'.

SAVE TRANSLATE OUTFILE='/tmp/novo_gama_moradores.csv'
  /TYPE=CSV /ENCODING='LOCALE' /MAP /REPLACE /FIELDNAMES /CELLS=VALUES /TEXTOPTIONS DELIMITER=';' DECIMAL = COMMA
  /keep = referencia municipio A01setor A01nficha A01nPessoas D02 D06 D03 D04 D05 D07 D08 D09 D10 D11 D12 D13 
D14 D15 D16 D17 D18 D19 D20 D21 D22 E01 E02 E03 E04 E05 E06 E07 E08 E09 E10 E11 E12 E13 E14 E15.

get file = '/tmp/dp_mor_1718.sav'.

select if municipio = 'Padre Bernardo'.

SAVE TRANSLATE OUTFILE='/tmp/padre_bernardo_moradores.csv'
  /TYPE=CSV /ENCODING='LOCALE' /MAP /REPLACE /FIELDNAMES /CELLS=VALUES /TEXTOPTIONS DELIMITER=';' DECIMAL = COMMA
  /keep = referencia municipio A01setor A01nficha A01nPessoas D02 D06 D03 D04 D05 D07 D08 D09 D10 D11 D12 D13 
D14 D15 D16 D17 D18 D19 D20 D21 D22 E01 E02 E03 E04 E05 E06 E07 E08 E09 E10 E11 E12 E13 E14 E15.

get file = '/tmp/dp_mor_1718.sav'.

select if municipio = 'Planaltina'.

SAVE TRANSLATE OUTFILE='/tmp/planaltina_moradores.csv'
  /TYPE=CSV /ENCODING='LOCALE' /MAP /REPLACE /FIELDNAMES /CELLS=VALUES /TEXTOPTIONS DELIMITER=';' DECIMAL = COMMA
  /keep = referencia municipio A01setor A01nficha A01nPessoas D02 D06 D03 D04 D05 D07 D08 D09 D10 D11 D12 D13 
D14 D15 D16 D17 D18 D19 D20 D21 D22 E01 E02 E03 E04 E05 E06 E07 E08 E09 E10 E11 E12 E13 E14 E15.

get file = '/tmp/dp_mor_1718.sav'.

select if municipio = 'Santo Ant�nio do Descoberto'.

SAVE TRANSLATE OUTFILE='/tmp/santo_antonio_do_descoberto_moradores.csv'
  /TYPE=CSV /ENCODING='LOCALE' /MAP /REPLACE /FIELDNAMES /CELLS=VALUES /TEXTOPTIONS DELIMITER=';' DECIMAL = COMMA
  /keep = referencia municipio A01setor A01nficha A01nPessoas D02 D06 D03 D04 D05 D07 D08 D09 D10 D11 D12 D13 
D14 D15 D16 D17 D18 D19 D20 D21 D22 E01 E02 E03 E04 E05 E06 E07 E08 E09 E10 E11 E12 E13 E14 E15.

get file = '/tmp/dp_mor_1718.sav'.

select if municipio = 'Valpara�so de Goi�s'.

SAVE TRANSLATE OUTFILE='/tmp/valparaiso_de_goias_moradores.csv'
  /TYPE=CSV /ENCODING='LOCALE' /MAP /REPLACE /FIELDNAMES /CELLS=VALUES /TEXTOPTIONS DELIMITER=';' DECIMAL = COMMA
  /keep = referencia municipio A01setor A01nficha A01nPessoas D02 D06 D03 D04 D05 D07 D08 D09 D10 D11 D12 D13 
D14 D15 D16 D17 D18 D19 D20 D21 D22 E01 E02 E03 E04 E05 E06 E07 E08 E09 E10 E11 E12 E13 E14 E15.


