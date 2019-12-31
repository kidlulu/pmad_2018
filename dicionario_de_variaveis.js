tipo - TipoEntrevista
titulo: "A pesquisa poderá ser realizada neste endereço? Caso contrario selecione o motivo.
Tipo.1 - Sim (Continuar a pesquisa)
Tipo.2 - Não (Unidade fechada)
Tipo.3 - Não (Recusa do morador)
Tipo.4 - Não (Unidade vaga)
Tipo.5 - Não (Unidade vaga devido a uso ocasional)
Tipo.6 - Não (Unidade vaga devido a construção ou reforma)
Tipo.7A - Não (Unidade não residencial)
Tipo.7B - Não (Unidade não encontrada)
Tipo.7C - Não (Unidade de uso coletivo)
Tipo.7D - Não (Terreno vazio)
Tipo.8 - Não (Outro motivo)

A01nficha - Número da Ficha

A01setor - Município

A01nsetorcensitario - Número do Setor Censitário
A01npessoas - Nº de Pessoas no Domicílio tipo: "numerico" }       

Bloco B - Características do Domicílio Particular

B01 - Espécie do domicílio
B01.1 - Permanente
B01.2 - Improvisado
B01.3 - Permanente em construção

B02 - Tipo do seu domicílio
B02.1 - Casa
B02.2 - Barraco
B02.3 - Cômodo
B02.4 - Quitinete/Estúdio
B02.5 - Flat
B02.6 - Apartamento
B02.7 - Uso misto
B02.8 - Outros

B03 - Qual a situação do seu domicílio?
B03.1 - Próprio já pago (Quitado) "regras: "PULAR:B06;
B03.2 - Próprio ainda pagando (Em aquisição) "regras: "PULAR:B04;
B03.3 - Próprio em terreno não legalizado "regras: "PULAR:B06;
B03.4 - Próprio em assentamento "regras: "PULAR:B06;
B03.5 - Próprio em invasão "regras: "PULAR:B06;
B03.6 - Alugado "regras: "PULAR:B05;
B03.7 - Alugado em terreno não legalizado "regras: "PULAR:B05;
B03.8 - Alugado em assentamento "regras: "PULAR:B05;
B03.9 - Alugado em invasão "regras: "PULAR:B05;
B03.10 - Cedido "regras: "PULAR:B06;
B03.11 - Cedido em terreno não legalizado "regras: "PULAR:B06;
B03.12 - Cedido em assentamento "regras: "PULAR:B06;
B03.13 - Cedido em invasão "regras: "PULAR:B06;
B03.14 - Funcional "regras: "PULAR:B06;
B03.15 - Outros "regras: "PULAR:B06;

B04 - Se o imóvel for próprio em aquisição, qual o valor mensal pago ou que deveria ser pago da última prestação?
B04.1. Informar valor campo: { tipo: "moeda "regras: "PULAR:B06;
B04.77777 - Recusa "regras: "PULAR:B06;
B04.88888 - Não sabe "regras: "PULAR:B06;
B04.99999 - Não se aplica

B05 - Se o imóvel for alugado qual o último valor do aluguel pago ou que deveria ser pago?
B05.1 - B05.1. Informar valor campo: { tipo: "moeda" } },
B05.77777 - Recusa
B05.88888 - Não sabe
B05.99999 - Não se aplica

B06 - Condição Legal do Imóvel
B06.0 - Não tem imóvel próprio (Reside em um alugado, cedido ou funcional)
B06.1 - Escritura definitiva
B06.2 - Concessão de uso
B06.3 - Contrato de financiamento particular
B06.4 - Contrato de financiamento governamental
B06.5 - Contrato de compra e venda (Cessão de Direito)
B06.6 - Minha casa minha vida
B06.7 - Outros

B07 - Quantos cômodos tem este domicílio? [{ id: "B07.nComodos tipo: "numerico - Quantidade" }]

B08 - Quantos cômodos estão servindo permanentemente de dormitórios neste domicílio? [{ id: "B08.nDormitorios tipo: "numerico - Quantidade" }]

B09 - Quantos banheiros e/ou sanitários têm este domicílio? [{ id: "B09.nBanheiros tipo: "numerico - Quantidade" }]

B10 - Como é feito o abastecimento de água neste domicílio?
B10.1 - Rede Geral
B10.2 - Poço/Cisterna
B10.3 - Poço Artesiano
B10.4 - Outros

B11 - Consumo de água potável
B11.1 - Não tem filtro
B11.2 - Filtro de barro
B11.3 - Filtro de parede
B11.4 - Filtro de carvão ativado
B11.5 - Água Mineral 

B12 - Pratica ações para fins de economizar água?
B12.1 - Não
B12.2 - Sim
B12.3 - Não conta com Rede Geral
B12.8 - Não sabe/não quis responder

B13 - Falta Água?
B13.1 - Não
B13.2 - Raramente
B13.3 - Frequentemente
B13.4 - Não conta com Rede Geral
B13.8 - Não sabe/não quis responder

B14 - Como este domicílio é abastecido por energia elétrica?
B14.1 - Rede Geral
B14.2 - Próprio (gerador e bateria)
B14.3 - Gambiarra
B14.4 - Outros

B15 - Pratica ações para fins de economizar Energia?
B15.1 - Não
B15.2 - Sim
B15.3 - Não conta com Rede Geral
B15.8 - Não sabe/não quis responder
B16 - Falta Energia?
B16.1 - Não
B16.2 - Raramente
B16.3 - Frequentemente
B16.4 - Não conta com Rede Geral
B16.8 - Não sabe/não quis responder

B17 - Esgotamento Sanitário?
B17.1 - Rede Geral
B17.2 - Fossa Séptica
B17.3 - Fossa Rudimentar
B17.4 - Esgoto a céu aberto
B17.5 - Outros

B18 - Coleta de Lixo?
B18.1 - Sem coleta seletiva
B18.2 - Com coleta seletiva
B18.3 - Jogado em local impróprio
B18.4 - Outro Destino

B19 - Infraestrutura Urbana na sua rua? "tipo": "multipla-selecao
B19.0 - Não tem "regras: "DESMARCAR:B19.1;DESMARCAR:B19.2;DESMARCAR:B19.3;DESMARCAR:B19.4;DESMARCAR:B19.5;
B19.1 - Rua asfaltada "regras: "DESMARCAR:B19.0;
B19.2 - Calçada "regras: "DESMARCAR:B19.0;
B19.3 - Meio Fio "regras: "DESMARCAR:B19.0;
B19.4 - Iluminação pública "regras: "DESMARCAR:B19.0;
B19.5 - Rede de água pluvial "regras: "DESMARCAR:B19.0;

B20 - Problemas nas cercanias? "tipo": "multipla-selecao
B20.0 - Não tem "regras: "DESMARCAR:B20.1;DESMARCAR:B20.2;DESMARCAR:B20.3;DESMARCAR:B20.4;DESMARCAR:B20.5;DESMARCAR:B20.6;
B20.1 - Erosão "regras: "DESMARCAR:B20.0;
B20.2 - Área em declive "regras: "DESMARCAR:B20.0;
B20.3 - Entulho "regras: "DESMARCAR:B20.0;
B20.4 - Esgoto a céu aberto "regras: "DESMARCAR:B20.0;
B20.5 - Área alagadas (chuva) "regras: "DESMARCAR:B20.0;
B20.6 - Ruas esburacadas "regras: "DESMARCAR:B20.0;

B21 - Nas proximidades do Domicílio? "tipo": "multipla-selecao
B21.0 - Não tem "regras: "DESMARCAR:B21.1;DESMARCAR:B21.2;DESMARCAR:B21.3;DESMARCAR:B21.4;DESMARCAR:B21.5;DESMARCAR:B21.6;DESMARCAR:B21.7;DESMARCAR:B21.8;
B21.1 - Tem ruas arborizadas "regras: "DESMARCAR:B21.0;
B21.2 - Tem jardins/parques "regras: "DESMARCAR:B21.0;
B21.3 - Tem área de preservação ambiental "regras: "DESMARCAR:B21.0;
B21.4 - Tem nascente d’água "regras: "DESMARCAR:B21.0;
B21.5 - Ciclovia "regras: "DESMARCAR:B21.0;
B21.6 - Tem espaço cultural "regras: "DESMARCAR:B21.0;
B21.7 - Academia comunitária "regras: "DESMARCAR:B21.0;
B21.8 - Tem ponto de ônibus "regras: "DESMARCAR:B21.0;

B22 - Participação Social? "tipo": "multipla-selecao
B22.0 - Não participa "regras: "DESMARCAR:B22.1;DESMARCAR:B22.2;DESMARCAR:B22.3;DESMARCAR:B22.4;DESMARCAR:B22.5;DESMARCAR:B22.8;
B22.1 - Conselhos "regras: "DESMARCAR:B22.0;DESMARCAR:B22.8;
B22.2 - Sindicatos/Associações "regras: "DESMARCAR:B22.0;DESMARCAR:B22.8;
B22.3 - Organizações/Entidade não governamentais "regras: "DESMARCAR:B22.0;DESMARCAR:B22.8;
B22.4 - Cooperativas "regras: "DESMARCAR:B22.0;DESMARCAR:B22.8;
B22.5 - Grêmio Estudantil "regras: "DESMARCAR:B22.0;DESMARCAR:B22.8;
B22.8 - Não sabe/não quis responder "regras: "DESMARCAR:B22.1;DESMARCAR:B22.2;DESMARCAR:B22.3;DESMARCAR:B22.4;DESMARCAR:B22.5;DESMARCAR:B22.0;

B23 - Mobilização Social pela Educação na Escola Pública (Membro da família) "tipo": "multipla-selecao
B23.0 - Não participa "regras: "DESMARCAR:B23.1;DESMARCAR:B23.2;DESMARCAR:B23.3;DESMARCAR:B23.4;DESMARCAR:B23.8;
B23.1 - Usa espaços das escolas, extraclasse "regras: "DESMARCAR:B23.0;DESMARCAR:B23.8;
B23.2 - Participa de campanhas e reuniões "regras: "DESMARCAR:B23.0;DESMARCAR:B23.8;
B23.3 - Conhece o projeto pedagógico "regras: "DESMARCAR:B23.0;DESMARCAR:B23.8;
B23.4 - Conhece o Desempenho das escolas (IBEB/Prova Brasil) "regras: "DESMARCAR:B23.0;DESMARCAR:B23.8;
B23.8 - Não sabe/não quis responder "regras: "DESMARCAR:B23.1;DESMARCAR:B23.2;DESMARCAR:B23.3;DESMARCAR:B23.4;DESMARCAR:B23.0;

Bloco C - Inventário de Bens e Serviços Domiciliares / Locais de compras / Serviços Bancários

C01 - Quantos Veículos tem no seu domicílio? "tipo: "multipla-selecao
C01.0 - Não tem "regras: "ATRIBUIR_CAMPO_OP:C01.1='';ATRIBUIR_CAMPO_OP:C01.2='';ATRIBUIR_CAMPO_OP:C01.3='';ATRIBUIR_CAMPO_OP:C01.4='';ATRIBUIR_CAMPO_OP:C01.5='';ATRIBUIR_CAMPO_OP:C01.6='';ATRIBUIR_CAMPO_OP:C01.7='';ATRIBUIR_CAMPO_OP:C01.8='';ATRIBUIR_CAMPO_OP:C01.9='';"
C01.1 - Automóveis (fabricados até 1999) "tipo: "numerico - Quantidade
C01.2 - Automóveis (2000 até 2009) "tipo: "numerico - Quantidade
C01.3 - Automóveis (2010 ou mais) "tipo: "numerico - Quantidade
C01.4 - Utilitário "tipo: "numerico - Quantidade
C01.5 - Carga "tipo: "numerico - Quantidade
C01.6 - Motocicleta "tipo: "numerico - Quantidade
C01.7 - Bicicleta "tipo: "numerico - Quantidade
C01.8 - Carroça "tipo: "numerico - Quantidade
C01.9 - Outros "tipo: "numerico - Quantidade

C02 - Emplacamento veículos "tipo: "multipla-selecao
C02.0 - Não tem veículos "regras: "ATRIBUIR_CAMPO_OP:C02.1='';ATRIBUIR_CAMPO_OP:C02.2='';ATRIBUIR_CAMPO_OP:C02.3=''"
C02.1 - No município "tipo: "numerico - Quantidade "regras: "DESMARCAR:C02.0;"
C02.2 - No DF "tipo: "numerico - Quantidade
C02.3 - Outro Local "tipo: "numerico - Quantidade

C03 - Serviços Domiciliares "tipo: "multipla-selecao
C03.0 - Não tem "regras: "DESMARCAR:C03.1;DESMARCAR:C03.2;DESMARCAR:C03.3;DESMARCAR:C03.4;"
C03.1 - Internet (Wifi e ou 3G/4G) "regras: "DESMARCAR:C03.0;"
C03.2 - TV por Assinatura "regras: "DESMARCAR:C03.0;"
C03.3 - Assinatura de jornais "regras: "DESMARCAR:C03.0;"
C03.4 - Assinatura de revistas "regras: "DESMARCAR:C03.0;"

C04 - Equipamentos "tipo: "multipla-selecao
C04.01 - Quantas Placas de energia/aquecedor solar? "tipo: "numerico - Quantidade "regras: "DESMARCAR:C04.00;"
C04.02 - Quantos Ar condicionados? "tipo: "numerico - Quantidade "regras: "DESMARCAR:C04.00;"
C04.03 - Quantos Circuladores de ar e/ou ventiladores? "tipo: "numerico - Quantidade "regras: "DESMARCAR:C04.00;"
C04.04 - Quantos Fogões? "tipo: "numerico - Quantidade "regras: "DESMARCAR:C04.00;"
C04.05 - Quantos Fornos micro-ondas? " "numerico - Quantidade "regras: "DESMARCAR:C04.00;"
C04.06 - Quantos Fornos elétricos? " "numerico - Quantidade "regras: "DESMARCAR:C04.00;"
C04.07 - Quantos Freezers? " "numerico - Quantidade "regras: "DESMARCAR:C04.00;"
C04.08 - Quantas Geladeiras? " "numerico - Quantidade "regras: "DESMARCAR:C04.00;"
C04.09 - Quantos Ipod e similares? " "numerico - Quantidade "regras: "DESMARCAR:C04.00;"
C04.10 - Quantas Máquinas de lavar roupa? " "numerico - Quantidade "regras: "DESMARCAR:C04.00;"
C04.11 - Quantas Máquinas de lavar louça? " "numerico - Quantidade "regras: "DESMARCAR:C04.00;"
C04.12 - Quantas Máquinas de fotográfica digital? " "numerico - Quantidade "regras: "DESMARCAR:C04.00;"
C04.13 - Quantos Microcomputadores/Desktop? " "numerico - Quantidade "regras: "DESMARCAR:C04.00;"
C04.14 - Quantos Notebook/Laptop?  " "numerico - Quantidade "regras: "DESMARCAR:C04.00;"
C04.15 - Quantos Tablets/Ipad? " "numerico - Quantidade "regras: "DESMARCAR:C04.00;"
C04.16 - Quantos Tanquinhos elétricos? " "numerico - Quantidade "regras: "DESMARCAR:C04.00;"
C04.17 - Quantos Telefones fixos? " "numerico - Quantidade "regras: "DESMARCAR:C04.00;"
C04.18 - Quantos Telefones celulares pré-pago? " "numerico - Quantidade "regras: "DESMARCAR:C04.00;"
C04.19 - Quantos Telefones celulares pós-pago? " "numerico - Quantidade "regras: "DESMARCAR:C04.00;"
C04.20 - Quantos Televisores (tubo)? " "numerico - Quantidade "regras: "DESMARCAR:C04.00;"
C04.21 - Quantos Televisores tela fina/plana " "numerico - Quantidade "regras: "DESMARCAR:C04.00;"
C04.22 - Quantos Umidificadores? " "numerico - Quantidade "regras: "DESMARCAR:C04.00;"
C04.77 - Não quis responder "regras: "ATRIBUIR_CAMPO_OP:C04.01='';ATRIBUIR_CAMPO_OP:C04.02='';ATRIBUIR_CAMPO_OP:C04.03='';ATRIBUIR_CAMPO_OP:C04.04='';ATRIBUIR_CAMPO_OP:C04.05='';ATRIBUIR_CAMPO_OP:C04.06='';ATRIBUIR_CAMPO_OP:C04.07='';ATRIBUIR_CAMPO_OP:C04.08='';ATRIBUIR_CAMPO_OP:C04.09='';ATRIBUIR_CAMPO_OP:C04.10='';ATRIBUIR_CAMPO_OP:C04.11='';ATRIBUIR_CAMPO_OP:C04.12='';ATRIBUIR_CAMPO_OP:C04.13='';ATRIBUIR_CAMPO_OP:C04.14='';ATRIBUIR_CAMPO_OP:C04.15='';ATRIBUIR_CAMPO_OP:C04.16='';ATRIBUIR_CAMPO_OP:C04.17='';ATRIBUIR_CAMPO_OP:C04.18='';ATRIBUIR_CAMPO_OP:C04.19='';ATRIBUIR_CAMPO_OP:C04.20='';ATRIBUIR_CAMPO_OP:C04.21='';ATRIBUIR_CAMPO_OP:C04.22='';"
C04.00 - Não tem "regras: "ATRIBUIR_CAMPO_OP:C04.01='';ATRIBUIR_CAMPO_OP:C04.02='';ATRIBUIR_CAMPO_OP:C04.03='';ATRIBUIR_CAMPO_OP:C04.04='';ATRIBUIR_CAMPO_OP:C04.05='';ATRIBUIR_CAMPO_OP:C04.06='';ATRIBUIR_CAMPO_OP:C04.07='';ATRIBUIR_CAMPO_OP:C04.08='';ATRIBUIR_CAMPO_OP:C04.09='';ATRIBUIR_CAMPO_OP:C04.10='';ATRIBUIR_CAMPO_OP:C04.11='';ATRIBUIR_CAMPO_OP:C04.12='';ATRIBUIR_CAMPO_OP:C04.13='';ATRIBUIR_CAMPO_OP:C04.14='';ATRIBUIR_CAMPO_OP:C04.15='';ATRIBUIR_CAMPO_OP:C04.16='';ATRIBUIR_CAMPO_OP:C04.17='';ATRIBUIR_CAMPO_OP:C04.18='';ATRIBUIR_CAMPO_OP:C04.19='';ATRIBUIR_CAMPO_OP:C04.20='';ATRIBUIR_CAMPO_OP:C04.21='';ATRIBUIR_CAMPO_OP:C04.22='';"

C05 - Serviços Domésticos "multipla-selecao
C05.0 - Não tem empregado doméstico "regras: "ATRIBUIR_CAMPO_OP:C05.1='';ATRIBUIR_CAMPO_OP:C05.2='';ATRIBUIR_CAMPO_OP:C05.3=''"
C05.1 - Mensalista morador do domicílio " "numerico - Quantidade "regras: "DESMARCAR:C05.0;"
C05.2 - Mensalista não morador do domicílio " "numerico - Quantidade "regras: "DESMARCAR:C05.0;"
C05.3 - Diarista " "numerico - Quantidade "regras: "DESMARCAR:C05.0;"

C06 - Locais de Compras da Família
C06.01 - Plano Piloto
C06.02 - Gama
C06.03 - Taguatinga
C06.04 - Brazlândia
C06.05 - Sobradinho
C06.06 - Planaltina
C06.07 - Paranoá
C06.08 - Núcleo Bandeirante
C06.09 - Ceilândia
C06.10 - Guará
C06.11 - Cruzeiro
C06.12 - Samambaia
C06.13 - Santa Maria
C06.14 - São Sebastião
C06.15 - Recanto das Emas
C06.16 - Lago Sul
C06.17 - Riacho Fundo
C06.18 - Lago Norte
C06.19 - Candangolândia
C06.20 - Águas Claras
C06.21 - Riacho Fundo II
C06.22 - Sudoeste / Octogonal
C06.23 - Varjão
C06.24 - Park Way
C06.25 - SCIA - Estrutural
C06.26 - Sobradinho II
C06.27 - Jardim Botânico
C06.28 - Itapoã
C06.29 - SIA
C06.30 - Vicente Pires
C06.31 - Fercal
C06.32 - Vários locais do DF
C06.41 - Aguas Lindas de Goiás
C06.42 - Alexânia
C06.43 - Cidade Ocidental(Sede e ABC)
C06.44 - Cristalina(Sede, Campos Lindos / Marajó)
C06.45 - Cocalzinho de Goiás(Sede, Girassol / Edilândia)
C06.46 - Formosa
C06.47 - Luziânia(Sede e Distritos)
C06.48 - Novo Gama
C06.49 - Padre Bernardo(Sede, Monte Alto)
C06.50 - Planaltina
C06.51 - Santo Antônio do Descoberto
C06.52 - Valparaíso de Goiás
C06.53 - Outros municípios da RIDE
C06.54 - Anápolis
C06.55 - Goiânia
C06.56 - Outros locais
C06.88 - Não sabe/não quis responder
C06.00 - Não compra

C06.2 - Local de compras de Roupas/calçados (Predominante)
C06.01 - Plano Piloto
C06.02 - Gama
C06.03 - Taguatinga
C06.04 - Brazlândia
C06.05 - Sobradinho
C06.06 - Planaltina
C06.07 - Paranoá
C06.08 - Núcleo Bandeirante
C06.09 - Ceilândia
C06.10 - Guará
C06.11 - Cruzeiro
C06.12 - Samambaia
C06.13 - Santa Maria
C06.14 - São Sebastião
C06.15 - Recanto das Emas
C06.16 - Lago Sul
C06.17 - Riacho Fundo
C06.18 - Lago Norte
C06.19 - Candangolândia
C06.20 - Águas Claras
C06.21 - Riacho Fundo II
C06.22 - Sudoeste / Octogonal
C06.23 - Varjão
C06.24 - Park Way
C06.25 - SCIA - Estrutural
C06.26 - Sobradinho II
C06.27 - Jardim Botânico
C06.28 - Itapoã
C06.29 - SIA
C06.30 - Vicente Pires
C06.31 - Fercal
C06.32 - Vários locais do DF
C06.41 - Aguas Lindas de Goiás
C06.42 - Alexânia
C06.43 - Cidade Ocidental(Sede e ABC)
C06.44 - Cristalina(Sede, Campos Lindos / Marajó)
C06.45 - Cocalzinho de Goiás(Sede, Girassol / Edilândia)
C06.46 - Formosa
C06.47 - Luziânia(Sede e Distritos)
C06.48 - Novo Gama
C06.49 - Padre Bernardo(Sede, Monte Alto)
C06.50 - Planaltina
C06.51 - Santo Antônio do Descoberto
C06.52 - Valparaíso de Goiás
C06.53 - Outros municípios da RIDE
C06.54 - Anápolis
C06.55 - Goiânia
C06.56 - Outros locais
C06.88 - Não sabe/não quis responder
C06.00 - Não compra

C06.3 - Local de compras de Eletrodomésticos (Predominante)
C06.01 - Plano Piloto
C06.02 - Gama
C06.03 - Taguatinga
C06.04 - Brazlândia
C06.05 - Sobradinho
C06.06 - Planaltina
C06.07 - Paranoá
C06.08 - Núcleo Bandeirante
C06.09 - Ceilândia
C06.10 - Guará
C06.11 - Cruzeiro
C06.12 - Samambaia
C06.13 - Santa Maria
C06.14 - São Sebastião
C06.15 - Recanto das Emas
C06.16 - Lago Sul
C06.17 - Riacho Fundo
C06.18 - Lago Norte
C06.19 - Candangolândia
C06.20 - Águas Claras
C06.21 - Riacho Fundo II
C06.22 - Sudoeste / Octogonal
C06.23 - Varjão
C06.24 - Park Way
C06.25 - SCIA - Estrutural
C06.26 - Sobradinho II
C06.27 - Jardim Botânico
C06.28 - Itapoã
C06.29 - SIA
C06.30 - Vicente Pires
C06.31 - Fercal
C06.32 - Vários locais do DF
C06.41 - Aguas Lindas de Goiás
C06.42 - Alexânia
C06.43 - Cidade Ocidental(Sede e ABC)
C06.44 - Cristalina(Sede, Campos Lindos / Marajó)
C06.45 - Cocalzinho de Goiás(Sede, Girassol / Edilândia)
C06.46 - Formosa
C06.47 - Luziânia(Sede e Distritos)
C06.48 - Novo Gama
C06.49 - Padre Bernardo(Sede, Monte Alto)
C06.50 - Planaltina
C06.51 - Santo Antônio do Descoberto
C06.52 - Valparaíso de Goiás
C06.53 - Outros municípios da RIDE
C06.54 - Anápolis
C06.55 - Goiânia
C06.56 - Outros locais
C06.88 - Não sabe/não quis responder
C06.00 - Não compra

C06.4 - Local de compras de Serviços pessoais (Predominante)
C06.01 - Plano Piloto
C06.02 - Gama
C06.03 - Taguatinga
C06.04 - Brazlândia
C06.05 - Sobradinho
C06.06 - Planaltina
C06.07 - Paranoá
C06.08 - Núcleo Bandeirante
C06.09 - Ceilândia
C06.10 - Guará
C06.11 - Cruzeiro
C06.12 - Samambaia
C06.13 - Santa Maria
C06.14 - São Sebastião
C06.15 - Recanto das Emas
C06.16 - Lago Sul
C06.17 - Riacho Fundo
C06.18 - Lago Norte
C06.19 - Candangolândia
C06.20 - Águas Claras
C06.21 - Riacho Fundo II
C06.22 - Sudoeste / Octogonal
C06.23 - Varjão
C06.24 - Park Way
C06.25 - SCIA - Estrutural
C06.26 - Sobradinho II
C06.27 - Jardim Botânico
C06.28 - Itapoã
C06.29 - SIA
C06.30 - Vicente Pires
C06.31 - Fercal
C06.32 - Vários locais do DF
C06.41 - Aguas Lindas de Goiás
C06.42 - Alexânia
C06.43 - Cidade Ocidental(Sede e ABC)
C06.44 - Cristalina(Sede, Campos Lindos / Marajó)
C06.45 - Cocalzinho de Goiás(Sede, Girassol / Edilândia)
C06.46 - Formosa
C06.47 - Luziânia(Sede e Distritos)
C06.48 - Novo Gama
C06.49 - Padre Bernardo(Sede, Monte Alto)
C06.50 - Planaltina
C06.51 - Santo Antônio do Descoberto
C06.52 - Valparaíso de Goiás
C06.53 - Outros municípios da RIDE
C06.54 - Anápolis
C06.55 - Goiânia
C06.56 - Outros locais
C06.88 - Não sabe/não quis responder
C06.00 - Não compra

C06.5 - Local de compras de Serviços em geral (Predominante)
C06.01 - Plano Piloto
C06.02 - Gama
C06.03 - Taguatinga
C06.04 - Brazlândia
C06.05 - Sobradinho
C06.06 - Planaltina
C06.07 - Paranoá
C06.08 - Núcleo Bandeirante
C06.09 - Ceilândia
C06.10 - Guará
C06.11 - Cruzeiro
C06.12 - Samambaia
C06.13 - Santa Maria
C06.14 - São Sebastião
C06.15 - Recanto das Emas
C06.16 - Lago Sul
C06.17 - Riacho Fundo
C06.18 - Lago Norte
C06.19 - Candangolândia
C06.20 - Águas Claras
C06.21 - Riacho Fundo II
C06.22 - Sudoeste / Octogonal
C06.23 - Varjão
C06.24 - Park Way
C06.25 - SCIA - Estrutural
C06.26 - Sobradinho II
C06.27 - Jardim Botânico
C06.28 - Itapoã
C06.29 - SIA
C06.30 - Vicente Pires
C06.31 - Fercal
C06.32 - Vários locais do DF
C06.41 - Aguas Lindas de Goiás
C06.42 - Alexânia
C06.43 - Cidade Ocidental(Sede e ABC)
C06.44 - Cristalina(Sede, Campos Lindos / Marajó)
C06.45 - Cocalzinho de Goiás(Sede, Girassol / Edilândia)
C06.46 - Formosa
C06.47 - Luziânia(Sede e Distritos)
C06.48 - Novo Gama
C06.49 - Padre Bernardo(Sede, Monte Alto)
C06.50 - Planaltina
C06.51 - Santo Antônio do Descoberto
C06.52 - Valparaíso de Goiás
C06.53 - Outros municípios da RIDE
C06.54 - Anápolis
C06.55 - Goiânia
C06.56 - Outros locais
C06.88 - Não sabe/não quis responder
C06.00 - Não compra

C06.6 - Local de Cultura e lazer (Predominante)
C06.01 - Plano Piloto
C06.02 - Gama
C06.03 - Taguatinga
C06.04 - Brazlândia
C06.05 - Sobradinho
C06.06 - Planaltina
C06.07 - Paranoá
C06.08 - Núcleo Bandeirante
C06.09 - Ceilândia
C06.10 - Guará
C06.11 - Cruzeiro
C06.12 - Samambaia
C06.13 - Santa Maria
C06.14 - São Sebastião
C06.15 - Recanto das Emas
C06.16 - Lago Sul
C06.17 - Riacho Fundo
C06.18 - Lago Norte
C06.19 - Candangolândia
C06.20 - Águas Claras
C06.21 - Riacho Fundo II
C06.22 - Sudoeste / Octogonal
C06.23 - Varjão
C06.24 - Park Way
C06.25 - SCIA - Estrutural
C06.26 - Sobradinho II
C06.27 - Jardim Botânico
C06.28 - Itapoã
C06.29 - SIA
C06.30 - Vicente Pires
C06.31 - Fercal
C06.32 - Vários locais do DF
C06.41 - Aguas Lindas de Goiás
C06.42 - Alexânia
C06.43 - Cidade Ocidental(Sede e ABC)
C06.44 - Cristalina(Sede, Campos Lindos / Marajó)
C06.45 - Cocalzinho de Goiás(Sede, Girassol / Edilândia)
C06.46 - Formosa
C06.47 - Luziânia(Sede e Distritos)
C06.48 - Novo Gama
C06.49 - Padre Bernardo(Sede, Monte Alto)
C06.50 - Planaltina
C06.51 - Santo Antônio do Descoberto
C06.52 - Valparaíso de Goiás
C06.53 - Outros municípios da RIDE
C06.54 - Anápolis
C06.55 - Goiânia
C06.56 - Outros locais
C06.88 - Não sabe/não quis responder
C06.00 - Não compra

C07 - Existência de Bancos
C07.1 - Existem vários na região
C07.2 - Não tem banco
C07.3 - Não há bancos suficientes
C07.8 - Não sabe/não quis responder" }

C08 - Em relação aos serviços bancários
C08.1 - Utilizo vários bancos
C08.2 - Utilizo apenas um banco
C08.3 - Uso os canais eletrônicos
C08.4 - Não uso porque considero os serviços/produtos/taxas insatisfatórios "regras: "PULAR:C10;
C08.8 - Não sabe/não quis responder

C09 - Qual o serviço é mais importante para a escolha do seu banco?
C09.01 - Cartão de Crédito
C09.02 - Financiamento/Empréstimo
C09.03 - Investimento
C09.04 - Recebimento de contas
C09.05 - Seguro
C09.06 - Previdência
C09.07 - Canais de atendimento
C09.08 - Recebimento de salário
C09.09 - Outros
C09.88 - Não sabe/não quis responder
C09.99 - Não se aplica

C10.1 - Cite o primeiro banco que recordar
C10.1 - Bradesco
C10.2 - Banco Regional de Brasília - BRB
C10.3 - Banco do Brasil - BB
C10.4 - Caixa Econômica Federal
C10.5 - Itaú
C10.6 - Safra
C10.7 - Santander
C10.8 - Outros
C10.9 - Não sabe/não quis responder "regras: "PULAR:D01

C10.2 - Cite o segundo banco que recordar
C10.1 - Bradesco
C10.2 - Banco Regional de Brasília - BRB
C10.3 - Banco do Brasil - BB
C10.4 - Caixa Econômica Federal
C10.5 - Itaú
C10.6 - Safra
C10.7 - Santander
C10.8 - Outros
C10.9 - Não sabe/não quis responder "regras: "PULAR:D01
C10.99 - Não se aplica

C10.3 - Cite o terceiro banco que recordar
C10.1 - Bradesco
C10.2 - Banco Regional de Brasília - BRB
C10.3 - Banco do Brasil - BB
C10.4 - Caixa Econômica Federal
C10.5 - Itaú
C10.6 - Safra
C10.7 - Santander
C10.8 - Outros
C10.9 - Não sabe/não quis responder "regras: "PULAR:D01;"
C10.99 - Não se aplica

C10.4 - Cite o quarto banco que recordar
C10.1 - Bradesco
C10.2 - Banco Regional de Brasília - BRB
C10.3 - Banco do Brasil - BB
C10.4 - Caixa Econômica Federal
C10.5 - Itaú
C10.6 - Safra
C10.7 - Santander
C10.8 - Outros
C10.9 - Não sabe/não quis responder "regras: "PULAR:D01;" 
C10.99 - Não se aplica



















Bloco D - Características Gerais e de Migração dos Moradores

D01.nome - Nome

D02 - Qual a condição do morador no domicílio?
D02.01 - Pessoa responsável pelo domicílio
D02.02 - Cônjuge ou companheiro(a) de sexo diferente
D02.03 - Cônjuge ou companheiro(a) do mesmo sexo
D02.04 - Filho(a)
D02.05 - Enteado
D02.06 - Outro parente
D02.07 - Agregado(a) (Não é parente da pessoa de referência da família ou do cônjuge e não paga hospedagem nem alimentação)
D02.08 - Pensionista (Não é parente da pessoa de referência da família ou do cônjuge e paga hospedagem) e/ou Alimentação
D02.09 - Empregado(a) doméstico(a)
D02.10 - Outros

D03 - Sexo
D03.1 - Masculino
D03.2 - Feminino

D04 - Cor ou Raça
D04.1 - Branca
D04.2 - Preta
D04.3 - Amarela
D04.4 - Parda
D04.5 - Indígena
D04.8 - Não sabe/não quis responder

D05 - Idade
D05.1 - D05.1 - Anos completos campo: { tipo: "numerico - Anos" } },
D05.000 - Menor de 1 ano

D06 - Responsabilidade compartilhada "regras_exibicao: "VALOR:D05 < 14;
D06.0 - Não
D06.1 - Sim
D06.9 - Não se aplica

D07 - Qual o seu Estado Civil? "regras_exibicao: "VALOR:D05 >= 14;
D07.1 - Solteiro
D07.2 - Casado Civil
D07.3 – Casado Religioso
D07.4 – Civil e Religioso
D07.5 - Divorciado
D07.6 - Separado
D07.7 - União estável
D07.8 - Viúvo
D07.9 - Não se aplica

D08 - Qual a Religião?
D08.0 - Não tem religião "regras: "PULAR:D10;
D08.1 - Católica
D08.2 - Evangélica tradicional
D08.3 - Evangélica pentecostal
D08.4 - Espírita
D08.5 - Oriental
D08.6 - Origem Afro
D08.7 - Outras
D08.8 - Não sabe/ não quis responder "regras: "PULAR:D10;"

D09 - Frequência Religiosa
D09.0 - Não frequenta
D09.1 - Praticante regular
D09.2 - Praticante eventual
D09.8 - Não sabe/não quis responder
D09.9 - Não se aplica

D10 - Qual a sua naturalidade? (Unidade da Federação onde nasceu)
D10.01 - Distrito Federal
D10.02 - Acre "regras: "PULAR:D12;
D10.03 - Alagoas "regras: "PULAR:D12;
D10.04 - Amapá "regras: "PULAR:D12;
D10.05 - Amazonas "regras: "PULAR:D12;
D10.06 - Bahia "regras: "PULAR:D12;
D10.07 - Ceará "regras: "PULAR:D12;
D10.08 - Espírito Santo "regras: "PULAR:D12;
D10.09 - Goiás "regras: "PULAR:D15;"},
D10.10 - Maranhão "regras: "PULAR:D12;
D10.11 - Mato Grosso "regras: "PULAR:D12;
D10.12 - Mato Grosso do Sul "regras: "PULAR:D12;
D10.13 - Minas Gerais "regras: "PULAR:D12;
D10.14 - Pará "regras: "PULAR:D12;
D10.15 - Paraíba "regras: "PULAR:D12;
D10.16 - Paraná "regras: "PULAR:D12;
D10.17 - Pernambuco "regras: "PULAR:D12;
D10.18 - Piauí "regras: "PULAR:D12;
D10.19 - Rio de Janeiro "regras: "PULAR:D12;
D10.20 - Rio Grande do Norte "regras: "PULAR:D12;
D10.21 - Rio Grande do Sul "regras: "PULAR:D12;
D10.22 - Rondônia "regras: "PULAR:D12;
D10.23 - Roraima "regras: "PULAR:D12;
D10.24 - Santa Catarina "regras: "PULAR:D12;
D10.25 - São Paulo "regras: "PULAR:D12;
D10.26 - Sergipe "regras: "PULAR:D12;
D10.27 - Tocantins "regras: "PULAR:D12;
D10.28 - Exterior "regras: "PULAR:D12;
D10.88 - Não sabe/Não quis informar "regras: "PULAR:D12;
D10.99 - Não se aplica

D11 - Para os nascidos no DF, onde a família morava na época do nascimento?
D11.1 - No DF
D11.2 - No município
D11.3 - Outro município da PMB
D11.4 - Em outro local
D11.8 - Não sabe/Não quis responder
D11.9 - Nascidos fora do DF
D11.9 - Não se aplica

D12 - Em que ano chegou ao município?
D12.1 - Informar ano de chegada campo: { tipo: "numerico - Ano" } },
D12.88 - Não sabe

D13 – De onde veio para o município? (Unidades da Federação)
D13.01 - Distrito Federal
D13.02 - Acre
D13.03 - Alagoas
D13.04 - Amapá
D13.05 - Amazonas
D13.06 - Bahia
D13.07 - Ceará
D13.08 - Espírito Santo
D13.09 - Goiás
D13.10 - Maranhão
D13.11 - Mato Grosso
D13.12 - Mato Grosso do Sul
D13.13 - Minas Gerais
D13.14 - Pará
D13.15 - Paraíba
D13.16 - Paraná
D13.17 - Pernambuco
D13.18 - Piauí
D13.19 - Rio de Janeiro
D13.20 - Rio Grande do Norte
D13.21 - Rio Grande do Sul
D13.22 - Rondônia
D13.23 - Roraima
D13.24 - Santa Catarina
D13.25 - São Paulo
D13.26 - Sergipe
D13.27 - Tocantins
D13.28 - Exterior
D13.88 - Não sabe/Não quis informar
D13.99 - Nascidos no município

D14 - Por que veio?
D14.01 - Acompanhar Parentes/Reunião Familiar
D14.02 - Estudo e ou escola
D14.03 - Aquisição moradia
D14.04 - Programa de Governo para Moradia
D14.05 - Transferência de trabalho
D14.06 - Procura de Trabalho
D14.07 - Melhor acesso aos serviços de saúde
D14.08 - Mudança de estado civil
D14.09 - Outros Motivos
D14.88 - Não Sabe
D14.99 - Nascidos no município

D15 - Há quanto tempo mora initerruptamente no município?
D15.1 - ____ Ano(s) campo: { tipo: "numerico - Anos" } },
D15.88 - Não sabe/não quis responder

D16 - Acesso à Internet (Predominante)
D16.0 - Não acessa
D16.1 - Computador de casa
D16.2 - Computador do trabalho
D16.3 - Celular
D16.4 - Tablet
D16.5 - Lan House
D16.8 - Não sabe/não quis responder" }

D17 - O Sr(a). tem plano de saúde?
D17.0 - Não possui
D17.1 - Empresarial
D17.2 - Particular
D17.8 - Não sabe/não quis responder

D18 - Utiliza hospital público?
D18.00 - Não utiliza
D18.01 - Plano Piloto
D18.02 - Gama
D18.03 - Taguatinga
D18.04 - Brazlândia
D18.05 - Sobradinho
D18.06 - Planaltina
D18.07 - Paranoá
D18.08 - Núcleo Bandeirante
D18.09 - Ceilândia
D18.10 - Guará
D18.11 - Cruzeiro
D18.12 - Samambaia
D18.13 - Santa Maria
D18.14 - São Sebastião
D18.15 - Recanto das Emas
D18.16 - Lago Sul
D18.17 - Riacho Fundo
D18.18 - Lago Norte
D18.19 - Candangolândia
D18.20 - Águas Claras
D18.21 - Riacho Fundo II
D18.22 - Sudoeste/Octogonal
D18.23 - Varjão
D18.24 - Park Way
D18.25 - SCIA-Estrutural
D18.26 - Sobradinho II
D18.27 - Jardim Botânico
D18.28 - Itapoã
D18.29 - SIA
D18.30 - Vicente Pires
D18.31 - Fercal
D18.32 - Vários locais do DF
D18.41 - Aguas Lindas de Goiás
D18.42 - Alexânia
D18.43 - Cidade Ocidental (Sede e ABC)
D18.44 - Cristalina (Sede, Campos Lindos/ Marajó)
D18.45 - Cocalzinho de Goiás (Sede, Girassol/Edilândia)
D18.46 - Formosa
D18.47 - Luziânia (Sede e Distritos)
D18.48 - Novo Gama
D18.49 - Padre Bernardo (Sede, Monte Alto)
D18.50 - Planaltina
D18.51 - Santo Antônio do Descoberto
D18.52 - Valparaíso de Goiás
D18.53 - Outros municípios da RIDE
D18.54 - Anápolis
D18.55 - Goiânia
D18.56 - Outros locais
D18.88 - Não sabe/não quis responder

D19 - Utiliza posto de saúde?
D19.00 - Não utiliza
D19.01 - Plano Piloto
D19.02 - Gama
D19.03 - Taguatinga
D19.04 - Brazlândia
D19.05 - Sobradinho
D19.06 - Planaltina
D19.07 - Paranoá
D19.08 - Núcleo Bandeirante
D19.09 - Ceilândia
D19.10 - Guará
D19.11 - Cruzeiro
D19.12 - Samambaia
D19.13 - Santa Maria
D19.14 - São Sebastião
D19.15 - Recanto das Emas
D19.16 - Lago Sul
D19.17 - Riacho Fundo
D19.18 - Lago Norte
D19.19 - Candangolândia
D19.20 - Águas Claras
D19.21 - Riacho Fundo II
D19.22 - Sudoeste/Octogonal
D19.23 - Varjão
D19.24 - Park Way
D19.25 - SCIA-Estrutural
D19.26 - Sobradinho II
D19.27 - Jardim Botânico
D19.28 - Itapoã
D19.29 - SIA
D19.30 - Vicente Pires
D19.31 - Fercal
D19.32 - Vários locais do DF
D19.41 - Aguas Lindas de Goiás
D19.42 - Alexânia
D19.43 - Cidade Ocidental (Sede e ABC)
D19.44 - Cristalina (Sede, Campos Lindos/ Marajó)
D19.45 - Cocalzinho de Goiás (Sede, Girassol/Edilândia)
D19.46 - Formosa
D19.47 - Luziânia (Sede e Distritos)
D19.48 - Novo Gama
D19.49 - Padre Bernardo (Sede, Monte Alto)
D19.50 - Planaltina
D19.51 - Santo Antônio do Descoberto
D19.52 - Valparaíso de Goiás
D19.53 - Outros municípios da RIDE
D19.54 - Anápolis
D19.55 - Goiânia
D19.56 - Outros locais
D19.88 - Não sabe/não quis responder

D20 - Qual o tipo violência mais recente que sofreu nos últimos 12 meses "regras_exibicao: "VALOR:D05 >= 16;
D20.0 - Não sofreu "regras: "PULAR:E01;
D20.1 - Roubo de carros
D20.2 - Furto de carros
D20.3 - Furto de dentro do carro
D20.4 - Dano/vandalismo de carros
D20.5 - Roubo de motocicletas/lambretas
D20.6 - Furto de motocicletas/lambretas
D20.7 - Roubo de bicicletas
D20.8 - Furto de bicicleta
D20.9 - Arrombamento
D20.10 - Tentativa de arrombamento
D20.11 - Roubo de outros bens
D20.12 - Furto pessoais
D20.13 - Ofensa sexual
D20.14 - Agressão física/ameaças
D20.88 - Não sabe/não lembra
D20.99 - Não se aplica

D21 - Local da violência? "regras_exibicao: "VALOR:D05 >= 16;
D21.1 - Na sua casa
D21.2 - Na casa de algum parente ou amigo
D21.3 - Andando na rua
D21.4 - No local de trabalho
D21.5 - Meios de transporte (ônibus, metrô, trem, táxi, lotação, carro, etc.)
D21.6 - Locais públicos internos (banco, escola, shopping, restaurantes, bar, loja, etc)
D21.7 - Locais públicos externos (praça, parque, jardim, etc)
D21.8 - Não Sabe/não lembra
D21.9 - Não se aplica

D22 - Registrou queixa do ocorrido? "regras_exibicao: "VALOR:D05 >= 16;
D22.1 - Não denunciou
D22.2 - Sim na Polícia Militar
D22.3 - Sim na Polícia Civil
D22.4 - Sim na Polícia Rodoviária Federal
D22.5 - Sim outra
D22.8 - Não Sabe/não lembra
D22.9 - Não se aplica


Bloco E - CARACTERÍSTICAS DE EDUCAÇÃO/ TRABALHO E RENDIMENTOS DOS MORADORES

E01 - Frequenta escola ou creche regular?
E01.0 - Não "regras: "PULAR:E03;
E01.1 - Escola pública
E01.2 - Escola particular
E01.3 - A distância pública "regras: "PULAR:E02;
E01.4 - A distância particular "regras: "PULAR:E02;

E02 - Local onde estuda?
E02.01 - Plano Piloto
E02.02 - Gama
E02.03 - Taguatinga
E02.04 - Brazlândia
E02.05 - Sobradinho
E02.06 - Planaltina
E02.07 - Paranoá
E02.08 - Núcleo Bandeirante
E02.09 - Ceilândia
E02.10 - Guará
E02.11 - Cruzeiro
E02.12 - Samambaia
E02.13 - Santa Maria
E02.14 - São Sebastião
E02.15 - Recanto das Emas
E02.16 - Lago Sul
E02.17 - Riacho Fundo
E02.18 - Lago Norte
E02.19 - Candangolândia
E02.20 - Águas Claras
E02.21 - Riacho Fundo II
E02.22 - Sudoeste/Octogonal
E02.23 - Varjão
E02.24 - Park Way
E02.25 - SCIA-Estrutural
E02.26 - Sobradinho II
E02.27 - Jardim Botânico
E02.28 - Itapoã
E02.29 - SIA
E02.30 - Vicente Pires
E02.31 - Fercal
E02.32 - Vários locais do DF
E02.41 - Aguas Lindas de Goiás
E02.42 - Alexânia
E02.43 - Cidade Ocidental (Sede e ABC)
E02.44 - Cristalina (Sede, Campos Lindos/ Marajó)
E02.45 - Cocalzinho de Goiás (Sede, Girassol/Edilândia)
E02.46 - Formosa
E02.47 - Luziânia (Sede e Distritos)
E02.48 - Novo Gama
E02.49 - Padre Bernardo (Sede, Monte Alto)
E02.50 - Planaltina
E02.51 - Santo Antônio do Descoberto
E02.52 - Valparaíso de Goiás
E02.53 - Outros municípios da RIDE
E02.54 - Anápolis
E02.55 - Goiânia
E02.56 - Outros locais
E02.88 - Não sabe/não quis responder
E02.99 - Não se aplica

E03 - Qual seu nível de escolaridade?
E03.01 - Analfabeto (15 anos e mais) "regras: "PULAR:E05;
E03.02 - Sabe ler e escrever (15 anos e mais) "regras: "PULAR:E05;
E03.03 - Alfabetização de jovens e adultos (15 anos e mais) "regras: "PULAR:E05;
E03.04 - Ensino Especial "regras: "PULAR:E05;
E03.05 - Maternal e Creche (0 anos a 3 anos) "regras: "PULAR:E05;
E03.06 - Jardim I e II/ pré-escola (entre 4 e 5 anos) "regras: "PULAR:E05;
E03.07 - EJA Ensino Fundamental incompleto (15 anos e mais) "regras: "PULAR:E05;
E03.08 - EJA Ensino Fundamental completo (17 anos e mais) "regras: "PULAR:E05;
E03.09 - EJA Ensino Médio incompleto (18 anos e mais) "regras: "PULAR:E05;
E03.10 - EJA Ensino Médio completo (20 anos e mais) "regras: "PULAR:E05;
E03.11 - Regular do Ensino fundamental incompleto (6 anos e mais)
E03.12 - Regular do Ensino fundamental completo (13 anos e mais) "regras: "PULAR:E05;
E03.13 - Regular do Ensino médio incompleto (14 anos e mais)
E03.14 - Regular do Ensino médio completo (16 anos e mais) "regras: "PULAR:E05;
E03.15 - Superior incompleto (16 anos e mais)
E03.16 - Superior completo "regras: "PULAR:E05;
E03.17 - Curso de Especialização (21 anos e mais)
E03.18 - Mestrado (21 anos e mais)
E03.19 - Doutorado (21 anos e mais)
E03.20 - Crianças de 6 a 14 anos fora da escola "regras: "PULAR:E05;
E03.88 - Não sabe/não quis responder "regras: "PULAR:E05;
E03.99 - Menor de 6 anos fora da escola "regras: "FIM_REPETICAO;


E04 - Série/Ano/Semestre concluído?
E04.1 - Informar número campo: { tipo: "numerico - Série,Ano/Semestre" } }
E04.99 - Não se aplica

E05 - Atualmente o Sr(a) está fazendo outro curso?
E05.0 - Não faz
E05.1 - Preparatório para concurso
E05.2 - Preparatório para vestibular/Enem
E05.3 - Preparatório para concurso e vestibular/Enem
E05.4 - Pronatec
E05.5 - Línguas
E05.6 - Outros

E06 - Qual a sua situação de atividade? "regras_exibicao: "VALOR:D05 >= 10;
E06.0 - Não tem atividade "regras: "PULAR:E13;
E06.1 - Tem trabalho remunerado (Incluindo estagiários e aprendizes)
E06.2 - Aposentado "regras: "PULAR:E13;
E06.3 - Aposentado trabalhando
E06.4 - Pensionista "regras: "PULAR:E13;
E06.5 - Do lar "regras: "PULAR:E13;
E06.6 - Desempregado "regras: "PULAR:E13;
E06.7 - Estudante "regras: "PULAR:E13;
E06.8 - Trabalho voluntário "regras: "PULAR:E09;
E06.9 - Não se aplica

E07 - Qual setor da atividade remunerada? "regras_exibicao: "VALOR:D05 >= 10;
E07.01 - Agricultura, Pecuária, Produção Florestal, Pesca e Aquicultura
E07.02 - Construção
E07.03 - Indústria
E07.04 - Comércio
E07.05 - Empresa Pública Federal
E07.06 - Empresa Pública - GDF
E07.07 - Administração Pública Federal
E07.08 - Administração Pública - GDF
E07.09 - Transporte e armazenagem
E07.10 - Comunicação e informação
E07.11 - Educação
E07.12 - Saúde
E07.13 - Serviços Domésticos
E07.14 - Serviços pessoais
E07.15 - Serviços creditícios e financeiros
E07.16 - Serviços imobiliários
E07.17 - Serviços gerais
E07.18 - Administração Pública do município
E07.19 - Administração Pública de Goiás
E07.88 - Não sabe
E07.99 - Não se aplica

E08 - Qual a sua posição de ocupação? "regras_exibicao: "VALOR:D05 >= 10;
E08.01 - Empregado com CTPS
E08.02 - Empregado sem CTPS
E08.03 – Empregado temporário
E08.04 – Servidor público/militar
E08.05 – Profissional Liberal
E08.06 – Microempreendedor individual – MEI (0 ou 1 empregado)
E08.07 - Microempresário (até 9 empregados)
E08.08 – Pequeno empresário (10 até 49 empregados)
E08.09 - Médio empresário (50 até 99 empregados)
E08.10 – Grande empresário (100 ou mais empregados)
E08.11 – Autônomo
E08.12 – Estagiário/Aprendiz
E08.13 – Cargo Comissionado
E08.14 – Ajuda no negócio da família
E08.88 – Não Sabe
E08.99 – Não se aplica

E09 – Local onde trabalha? "regras_exibicao: "VALOR:D05 >= 10;
E09.01 - Plano Piloto
E09.02 - Gama
E09.03 - Taguatinga
E09.04 - Brazlândia
E09.05 - Sobradinho
E09.06 - Planaltina
E09.07 - Paranoá
E09.08 - Núcleo Bandeirante
E09.09 - Ceilândia
E09.10 - Guará
E09.11 - Cruzeiro
E09.12 - Samambaia
E09.13 - Santa Maria
E09.14 - São Sebastião
E09.15 - Recanto das Emas
E09.16 - Lago Sul
E09.17 - Riacho Fundo
E09.18 - Lago Norte
E09.19 - Candangolândia
E09.20 - Águas Claras
E09.21 - Riacho Fundo II
E09.22 - Sudoeste/Octogonal
E09.23 - Varjão
E09.24 - Park Way
E09.25 - SCIA-Estrutural
E09.26 - Sobradinho II
E09.27 - Jardim Botânico
E09.28 - Itapoã
E09.29 - SIA
E09.30 - Vicente Pires
E09.31 - Fercal
E09.32 - Vários locais do DF
E09.41 - Aguas Lindas de Goiás
E09.42 - Alexânia
E09.43 - Cidade Ocidental (sede e ABC)
E09.44 - Cristalina (Sede, Campos Lindos/ Marajó)
E09.45 - Cocalzinho de Goiás (Sede, Girassol/Edilândia)
E09.46 - Formosa
E09.47 - Luziânia (Sede e Distritos)
E09.48 - Novo Gama
E09.49 - Padre Bernardo (Sede, Monte Alto)
E09.50 - Planaltina
E09.51 - Santo Antônio do Descoberto
E09.52 - Valparaíso de Goiás
E09.53 - Outros municípios da RIDE
E09.54 - Anápolis
E09.55 - Goiânia
E09.56 - Outros locais
E09.88 - Não sabe/não quis responder
E09.99 - Não se aplica

E10 - Quanto tempo o Sr(a) gasta de casa até o seu trabalho? "regras_exibicao: "VALOR:D05 >= 10;
E10.1 - Até 20 minutos
E10.2 - Entre 20 e 40 minutos
E10.3 - Entre 40 minutos e 1 hora
E10.4 - Entre 1 hora e 1 hora e meia
E10.5 - Entre 1 hora e meia e 2 horas
E10.6 - De 2 horas a 3 horas
E10.7 - Acima de 3 horas
E10.8 - Não sabe/não quis responder
E10.9 - Não se aplica

E11 - Quais modos de transporte o Sr(a) utliza para ir  para o trabalho? "regras_exibicao: "VALOR:D05 >= 10;
E11.1 - Ônibus
E11.2 - Mais de um ônibus
E11.3 - Automóvel
E11.4 - Ônibus e automóvel
E11.5 - Ônibus e metrô
E11.6 - Automóvel e metrô
E11.7 - Utilitário
E11.8 - Metrô
E11.9 - Motocicleta
E11.10 - Bicicleta
E11.11 - A pé
E11.12 - Outros
E11.99 - Não se aplica

E12 - Quanto o Sr(a) recebeu no mês passado do Trabalho Principal (em R$, sem centavos) "regras_exibicao: "VALOR:D05 >= 10;
E12.0 - Não teve rendimento no mês de referência
E12.1 - R$ ____________,00 campo: { tipo: "moeda" } },
E12.7 - Recusa
E12.8 - Não sabe
E12.99999 - Não se aplica

E13 - Quanto o Sr(a) recebeu no mês passado dos outros Rendimentos (em R$, sem centavos) "regras_exibicao: "VALOR:D05 >= 10;
E13.0 - Não teve rendimento no mês de referência
E13.1 - R$ ____________,00 campo: { tipo: "moeda" } },
E13.7 - Recusa
E13.8 - Não sabe
E13.99999 - Não se aplica

E14 - O Sr(a) contribui para a Previdência Social Pública (INSS)? "regras_exibicao: "VALOR:D05 >= 10;
E14.1 - Trabalha, mas não contribui
E14.2 - Pública
E14.3 - Privada
E14.4 - Pública e privada
E14.8 - Não sabe
E14.9 - Não se aplica

E15 - Local onde utiliza os serviços bancários? "regras_exibicao: "VALOR:D05 >= 10;
E15.00 - Não utiliza serviços bancários
E15.01 - Plano Piloto
E15.02 - Gama
E15.03 - Taguatinga
E15.04 - Brazlândia
E15.05 - Sobradinho
E15.06 - Planaltina
E15.07 - Paranoá
E15.08 - Núcleo Bandeirante
E15.09 - Ceilândia
E15.10 - Guará
E15.11 - Cruzeiro
E15.12 - Samambaia
E15.13 - Santa Maria
E15.14 - São Sebastião
E15.15 - Recanto das Emas
E15.16 - Lago Sul
E15.17 - Riacho Fundo
E15.18 - Lago Norte
E15.19 - Candangolândia
E15.20 - Águas Claras
E15.21 - Riacho Fundo II
E15.22 - Sudoeste/Octogonal
E15.23 - Varjão
E15.24 - Park Way
E15.25 - SCIA-Estrutural
E15.26 - Sobradinho II
E15.27 - Jardim Botânico
E15.28 - Itapoã
E15.29 - SIA
E15.30 - Vicente Pires
E15.31 - Fercal
E15.32 - Vários locais do DF
E15.41 - Aguas Lindas de Goiás
E15.42 - Alexânia
E15.43 - Cidade Ocidental (Sede e ABC)
E15.44 - Cristalina (Sede, Campos Lindos/ Marajó)
E15.45 - Cocalzinho de Goiás (Sede, Girassol/Edilândia)
E15.46 - Formosa
E15.47 - Luziânia (Sede e Distritos)
E15.48 - Novo Gama
E15.49 - Padre Bernardo (Sede, Monte Alto)
E15.50 - Planaltina
E15.51 - Santo Antônio do Descoberto
E15.52 - Valparaíso de Goiás
E15.53 - Outros municípios da RIDE
E15.54 - Anápolis
E15.55 - Goiânia
E15.56 - Outros locais
E15.88 - Não sabe/não quis responder
E15.99 - Não se aplica

Bloco F – Fechamento 

F01.nOrdemEntrevistado - Quem foi o entrevistado
F01.telefoneEntrevistado - Telefone do entrevistado
F01.observacoes - Observações referentes à pesquisa