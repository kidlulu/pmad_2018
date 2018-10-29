var EstruturaPMAD = {
    items: [
        {
            id: "TipoEntrevista",
            titulo: "Tipo de entrevista",
            items: [
                {
                    id: "Tipo",
                    titulo: "A pesquisa poderá ser realizada neste endereço? Caso contrario selecione o motivo.",
                    opcoes: [
                        { id: "Tipo.1", titulo: "Sim (Continuar a pesquisa)" },
                        { id: "Tipo.2", titulo: "Não (Unidade fechada)" },
                        { id: "Tipo.3", titulo: "Não (Recusa do morador)" },
                        { id: "Tipo.4", titulo: "Não (Unidade vaga)" },
                        { id: "Tipo.5", titulo: "Não (Unidade vaga devido a uso ocasional)" },
                        { id: "Tipo.6", titulo: "Não (Unidade vaga devido a construção ou reforma)" },
                        { id: "Tipo.7A", titulo: "Não (Unidade não residencial)" },
                        { id: "Tipo.7B", titulo: "Não (Unidade não encontrada)" },
                        { id: "Tipo.7C", titulo: "Não (Unidade de uso coletivo)" },
                        { id: "Tipo.7D", titulo: "Não (Terreno vazio)" },
                        { id: "Tipo.8", titulo: "Não (Outro motivo)", campo: { tipo: "texto-longo" } },
                    ]
                }
            ]
        },
        {
            id: "BlocoA",
            titulo: "Bloco A - Identificação",
            items: [
                {
                    id: "A01",
                    titulo: "A01 - Controle",
                    campos: [
                        { id: "A01.nFicha", titulo: "Número da Ficha", desabilitado: true },
                        { id: "A01.setor", titulo: "Município", desabilitado: true },
                        { id: "A01.nSetorCensitario", titulo: "Número do Setor Censitário", desabilitado: true },
                        { id: "A01.nPessoas", titulo: "Nº de Pessoas no Domicílio", tipo: "numerico" }                       
                    ]
                }
            ]
        },
        {
            id: "BlocoB",
            titulo: "Bloco B - Características do Domicílio Particular",
            items: [
                {
                    id: "B01",
                    titulo: "B01 - Espécie do domicílio",
                    opcoes: [
                        { id: "B01.1", titulo: "B01.1 - Permanente" },
                        { id: "B01.2", titulo: "B01.2 - Improvisado" },
                        { id: "B01.3", titulo: "B01.3 - Permanente em construção" },
                    ]
                },
                {
                    id: "B02",
                    titulo: "B02 - Tipo do seu domicílio",
                    opcoes: [
                        { id: "B02.1", titulo: "B02.1 - Casa" },
                        { id: "B02.2", titulo: "B02.2 - Barraco" },
                        { id: "B02.3", titulo: "B02.3 - Cômodo" },
                        { id: "B02.4", titulo: "B02.4 - Quitinete/Estúdio" },
                        { id: "B02.5", titulo: "B02.5 - Flat" },
                        { id: "B02.6", titulo: "B02.6 - Apartamento" },
                        { id: "B02.7", titulo: "B02.7 - Uso misto" },
                        { id: "B02.8", titulo: "B02.8 - Outros" },
                    ]
                },
                {
                    id: "B03",
                    titulo: "B03 - Qual a situação do seu domicílio?",
                    opcoes: [
                        { id: "B03.1", titulo: "B03.1 - Próprio já pago (Quitado)", regras: "PULAR:B06;" },
                        { id: "B03.2", titulo: "B03.2 - Próprio ainda pagando (Em aquisição)", regras: "PULAR:B04;" },
                        { id: "B03.3", titulo: "B03.3 - Próprio em terreno não legalizado", regras: "PULAR:B06;" },
                        { id: "B03.4", titulo: "B03.4 - Próprio em assentamento", regras: "PULAR:B06;" },
                        { id: "B03.5", titulo: "B03.5 - Próprio em invasão", regras: "PULAR:B06;" },
                        { id: "B03.6", titulo: "B03.6 - Alugado", regras: "PULAR:B05;" },
                        { id: "B03.7", titulo: "B03.7 - Alugado em terreno não legalizado", regras: "PULAR:B05;" },
                        { id: "B03.8", titulo: "B03.8 - Alugado em assentamento", regras: "PULAR:B05;" },
                        { id: "B03.9", titulo: "B03.9 - Alugado em invasão", regras: "PULAR:B05;" },
                        { id: "B03.10", titulo: "B03.10 - Cedido", regras: "PULAR:B06;" },
                        { id: "B03.11", titulo: "B03.11 - Cedido em terreno não legalizado", regras: "PULAR:B06;" },
                        { id: "B03.12", titulo: "B03.12 - Cedido em assentamento", regras: "PULAR:B06;" },
                        { id: "B03.13", titulo: "B03.13 - Cedido em invasão", regras: "PULAR:B06;" },
                        { id: "B03.14", titulo: "B03.14 - Funcional", regras: "PULAR:B06;" },
                        { id: "B03.15", titulo: "B03.15 - Outros", regras: "PULAR:B06;" },
                    ]
                },
                {
                    id: "B04",
                    titulo: "B04 - Se o imóvel for próprio em aquisição, qual o valor mensal pago ou que deveria ser pago da última prestação?",
                    opcoes: [
                        { id: "B04.1", titulo: "B04.1. Informar valor", campo: { tipo: "moeda" }, regras: "PULAR:B06;" },
                        { id: "B04.77777", titulo: "B04.77777 - Recusa", regras: "PULAR:B06;" },
                        { id: "B04.88888", titulo: "B04.88888 - Não sabe", regras: "PULAR:B06;" },
                    ]
                },
                {
                    id: "B05",
                    titulo: "B05 - Se o imóvel for alugado qual o último valor do aluguel pago ou que deveria ser pago?",
                    opcoes: [
                        { id: "B05.1", titulo: "B05.1. Informar valor", campo: { tipo: "moeda" } },
                        { id: "B05.77777", titulo: "B05.77777 - Recusa" },
                        { id: "B05.88888", titulo: "B05.88888 - Não sabe" },
                    ]
                },
                {
                    id: "B06",
                    titulo: "B06 - Condição Legal do Imóvel",
                    opcoes: [
                        { id: "B06.0", titulo: "B06.0 - Não tem imóvel próprio (Reside em um alugado, cedido ou funcional)" },
                        { id: "B06.1", titulo: "B06.1 - Escritura definitiva" },
                        { id: "B06.2", titulo: "B06.2 - Concessão de uso" },
                        { id: "B06.3", titulo: "B06.3 - Contrato de financiamento particular" },
                        { id: "B06.4", titulo: "B06.4 - Contrato de financiamento governamental" },
                        { id: "B06.5", titulo: "B06.5 - Contrato de compra e venda (Cessão de Direito)" },
                        { id: "B06.6", titulo: "B06.6 - Minha casa minha vida" },
                        { id: "B06.7", titulo: "B06.7 - Outros" },
                    ]
                },
                {
                    id: "B07",
                    titulo: "B07 - Quantos cômodos tem este domicílio?",
                    campos: [{ id: "B07.nComodos", tipo: "numerico", titulo: "Quantidade" }]
                },
                {
                    id: "B08",
                    titulo: "B08 - Quantos cômodos estão servindo permanentemente de dormitórios neste domicílio?",
                    campos: [{ id: "B08.nDormitorios", tipo: "numerico", titulo: "Quantidade" }]
                },
                {
                    id: "B09",
                    titulo: "B09 - Quantos banheiros e/ou sanitários têm este domicílio?",
                    campos: [{ id: "B09.nBanheiros", tipo: "numerico", titulo: "Quantidade" }]
                },
                {
                    id: "B10",
                    titulo: "B10 - Como é feito o abastecimento de água neste domicílio?",
                    opcoes: [
                        { id: "B10.1", titulo: "B10.1 - Rede Geral" },
                        { id: "B10.2", titulo: "B10.2 - Poço/Cisterna" },
                        { id: "B10.3", titulo: "B10.3 - Poço Artesiano" },
                        { id: "B10.4", titulo: "B10.4 - Outros" },
                    ]
                },
                {
                    id: "B11",
                    titulo: "B11 - Consumo de água potável",
                    opcoes: [
                        { id: "B11.1", titulo: "B11.1 - Não tem filtro" },
                        { id: "B11.2", titulo: "B11.2 - Filtro de barro" },
                        { id: "B11.3", titulo: "B11.3 - Filtro de parede" },
                        { id: "B11.4", titulo: "B11.4 - Filtro de carvão ativado" },
                        { id: "B11.5", titulo: "B11.5 - Água Mineral " },
                    ]
                },
                {
                    "id": "B12",
                    "titulo": "B12 - Pratica ações para fins de economizar água?",
                    "opcoes": [
                        { "id": "B12.1", "titulo": "B12.1 - Não" },
                        { "id": "B12.2", "titulo": "B12.2 - Sim" },
                        { "id": "B12.3", "titulo": "B12.3 - Não conta com Rede Geral" },
                        { "id": "B12.8", "titulo": "B12.8 - Não sabe/não quis responder" }
                    ]
                },
                {
                    "id": "B13",
                    "titulo": "B13 - Falta Água?",
                    "opcoes": [
                        { "id": "B13.1", "titulo": "B13.1 - Não" },
                        { "id": "B13.2", "titulo": "B13.2 - Raramente" },
                        { "id": "B13.3", "titulo": "B13.3 - Frequentemente" },
                        { "id": "B13.4", "titulo": "B13.4 - Não conta com Rede Geral" },
                        { "id": "B13.8", "titulo": "B13.8 - Não sabe/não quis responder" }
                    ]
                },
                {
                    "id": "B14",
                    "titulo": "B14 - Como este domicílio é abastecido por energia elétrica?",
                    "opcoes": [
                        { "id": "B14.1", "titulo": "B14.1 - Rede Geral" },
                        { "id": "B14.2", "titulo": "B14.2 - Próprio (gerador e bateria)" },
                        { "id": "B14.3", "titulo": "B14.3 - Gambiarra" },
                        { "id": "B14.4", "titulo": "B14.4 - Outros" }
                    ]
                },
                {
                    "id": "B15",
                    "titulo": "B15 - Pratica ações para fins de economizar Energia?",
                    "opcoes": [
                        { "id": "B15.1", "titulo": "B15.1 - Não" },
                        { "id": "B15.2", "titulo": "B15.2 - Sim" },
                        { "id": "B15.3", "titulo": "B15.3 - Não conta com Rede Geral" },
                        { "id": "B15.8", "titulo": "B15.8 - Não sabe/não quis responder" }
                    ]
                },
                {
                    "id": "B16",
                    "titulo": "B16 - Falta Energia?",
                    "opcoes": [
                        { "id": "B16.1", "titulo": "B16.1 - Não" },
                        { "id": "B16.2", "titulo": "B16.2 - Raramente" },
                        { "id": "B16.3", "titulo": "B16.3 - Frequentemente" },
                        { "id": "B16.4", "titulo": "B16.4 - Não conta com Rede Geral" },
                        { "id": "B16.8", "titulo": "B16.8 - Não sabe/não quis responder" }
                    ]
                },
                {
                    "id": "B17",
                    "titulo": "B17 - Esgotamento Sanitário?",
                    "opcoes": [
                        { "id": "B17.1", "titulo": "B17.1 - Rede Geral" },
                        { "id": "B17.2", "titulo": "B17.2 - Fossa Séptica" },
                        { "id": "B17.3", "titulo": "B17.3 - Fossa Rudimentar" },
                        { "id": "B17.4", "titulo": "B17.4 - Esgoto a céu aberto" },
                        { "id": "B17.5", "titulo": "B17.5 - Outros" }
                    ]
                },
                {
                    "id": "B18",
                    "titulo": "B18 - Coleta de Lixo?",
                    "opcoes": [
                        { "id": "B18.1", "titulo": "B18.1 - Sem coleta seletiva" },
                        { "id": "B18.2", "titulo": "B18.2 - Com coleta seletiva" },
                        { "id": "B18.3", "titulo": "B18.3 - Jogado em local impróprio" },
                        { "id": "B18.4", "titulo": "B18.4 - Outro Destino" }
                    ]
                },
                {
                    "id": "B19",
                    "titulo": "B19 - Infraestrutura Urbana na sua rua?",
                    "tipo": "multipla-selecao",
                    "opcoes": [
                        { "id": "B19.0", "titulo": "B19.0 - Não tem", regras: "DESMARCAR:B19.1;DESMARCAR:B19.2;DESMARCAR:B19.3;DESMARCAR:B19.4;DESMARCAR:B19.5;" },
                        { "id": "B19.1", "titulo": "B19.1 - Rua asfaltada", regras: "DESMARCAR:B19.0;" },
                        { "id": "B19.2", "titulo": "B19.2 - Calçada", regras: "DESMARCAR:B19.0;" },
                        { "id": "B19.3", "titulo": "B19.3 - Meio Fio", regras: "DESMARCAR:B19.0;" },
                        { "id": "B19.4", "titulo": "B19.4 - Iluminação pública", regras: "DESMARCAR:B19.0;" },
                        { "id": "B19.5", "titulo": "B19.5 - Rede de água pluvial", regras: "DESMARCAR:B19.0;" }
                    ]
                },
                {
                    "id": "B20",
                    "titulo": "B20 - Problemas nas cercanias?",
                    "tipo": "multipla-selecao",
                    "opcoes": [
                        { "id": "B20.0", "titulo": "B20.0 - Não tem", regras: "DESMARCAR:B20.1;DESMARCAR:B20.2;DESMARCAR:B20.3;DESMARCAR:B20.4;DESMARCAR:B20.5;DESMARCAR:B20.6;" },
                        { "id": "B20.1", "titulo": "B20.1 - Erosão", regras: "DESMARCAR:B20.0;" },
                        { "id": "B20.2", "titulo": "B20.2 - Área em declive", regras: "DESMARCAR:B20.0;" },
                        { "id": "B20.3", "titulo": "B20.3 - Entulho", regras: "DESMARCAR:B20.0;" },
                        { "id": "B20.4", "titulo": "B20.4 - Esgoto a céu aberto", regras: "DESMARCAR:B20.0;" },
                        { "id": "B20.5", "titulo": "B20.5 - Área alagadas (chuva)", regras: "DESMARCAR:B20.0;" },
                        { "id": "B20.6", "titulo": "B20.6 - Ruas esburacadas", regras: "DESMARCAR:B20.0;" }
                    ]
                },
                {
                    "id": "B21",
                    "titulo": "B21 - Nas proximidades do Domicílio?",
                    "tipo": "multipla-selecao",
                    "opcoes": [
                        { "id": "B21.0", "titulo": "B21.0 - Não tem", regras: "DESMARCAR:B21.1;DESMARCAR:B21.2;DESMARCAR:B21.3;DESMARCAR:B21.4;DESMARCAR:B21.5;DESMARCAR:B21.6;DESMARCAR:B21.7;DESMARCAR:B21.8;" },
                        { "id": "B21.1", "titulo": "B21.1 - Tem ruas arborizadas", regras: "DESMARCAR:B21.0;" },
                        { "id": "B21.2", "titulo": "B21.2 - Tem jardins/parques", regras: "DESMARCAR:B21.0;" },
                        { "id": "B21.3", "titulo": "B21.3 - Tem área de preservação ambiental", regras: "DESMARCAR:B21.0;" },
                        { "id": "B21.4", "titulo": "B21.4 - Tem nascente d’água", regras: "DESMARCAR:B21.0;" },
                        { "id": "B21.5", "titulo": "B21.5 - Ciclovia", regras: "DESMARCAR:B21.0;" },
                        { "id": "B21.6", "titulo": "B21.6 - Tem espaço cultural", regras: "DESMARCAR:B21.0;" },
                        { "id": "B21.7", "titulo": "B21.7 - Academia comunitária", regras: "DESMARCAR:B21.0;" },
                        { "id": "B21.8", "titulo": "B21.8 - Tem ponto de ônibus", regras: "DESMARCAR:B21.0;" }
                    ]
                },
                {
                    "id": "B22",
                    "titulo": "B22 - Participação Social?",
                    "tipo": "multipla-selecao",
                    "opcoes": [
                        { "id": "B22.0", "titulo": "B22.0 - Não participa", regras: "DESMARCAR:B22.1;DESMARCAR:B22.2;DESMARCAR:B22.3;DESMARCAR:B22.4;DESMARCAR:B22.5;DESMARCAR:B22.8;" },
                        { "id": "B22.1", "titulo": "B22.1 - Conselhos", regras: "DESMARCAR:B22.0;DESMARCAR:B22.8;" },
                        { "id": "B22.2", "titulo": "B22.2 - Sindicatos/Associações", regras: "DESMARCAR:B22.0;DESMARCAR:B22.8;" },
                        { "id": "B22.3", "titulo": "B22.3 - Organizações/Entidade não governamentais", regras: "DESMARCAR:B22.0;DESMARCAR:B22.8;" },
                        { "id": "B22.4", "titulo": "B22.4 - Cooperativas", regras: "DESMARCAR:B22.0;DESMARCAR:B22.8;" },
                        { "id": "B22.5", "titulo": "B22.5 - Grêmio Estudantil", regras: "DESMARCAR:B22.0;DESMARCAR:B22.8;" },
                        { "id": "B22.8", "titulo": "B22.8 - Não sabe/não quis responder", regras: "DESMARCAR:B22.1;DESMARCAR:B22.2;DESMARCAR:B22.3;DESMARCAR:B22.4;DESMARCAR:B22.5;DESMARCAR:B22.0;"  }
                    ]
                },
                {
                    "id": "B23",
                    "titulo": "B23 - Mobilização Social pela Educação na Escola Pública (Membro da família)",
                    "tipo": "multipla-selecao",
                    "opcoes": [
                        { "id": "B23.0", "titulo": "B23.0 - Não participa", regras: "DESMARCAR:B23.1;DESMARCAR:B23.2;DESMARCAR:B23.3;DESMARCAR:B23.4;DESMARCAR:B23.8;" },
                        { "id": "B23.1", "titulo": "B23.1 - Usa espaços das escolas, extraclasse", regras: "DESMARCAR:B23.0;DESMARCAR:B23.8;" },
                        { "id": "B23.2", "titulo": "B23.2 - Participa de campanhas e reuniões", regras: "DESMARCAR:B23.0;DESMARCAR:B23.8;" },
                        { "id": "B23.3", "titulo": "B23.3 - Conhece o projeto pedagógico", regras: "DESMARCAR:B23.0;DESMARCAR:B23.8;" },
                        { "id": "B23.4", "titulo": "B23.4 - Conhece o Desempenho das escolas (IBEB/Prova Brasil)", regras: "DESMARCAR:B23.0;DESMARCAR:B23.8;" },
                        { "id": "B23.8", "titulo": "B23.8 - Não sabe/não quis responder", regras: "DESMARCAR:B23.1;DESMARCAR:B23.2;DESMARCAR:B23.3;DESMARCAR:B23.4;DESMARCAR:B23.0;" }
                    ]
                }
            ]
        },
        {
            id: "BlocoC",
            titulo: "Bloco C - Inventário de Bens e Serviços Domiciliares / Locais de compras / Serviços Bancários",
            items: [
                {
                    id: "C01",
                    titulo: "C01 - Quantos Veículos tem no seu domicílio?",
                    tipo: "multipla-selecao",
                    opcoes: [
                        {
                            id: "C01.0",
                            titulo: "C01.0 - Não tem",
                            regras: "ATRIBUIR_CAMPO_OP:C01.1='';ATRIBUIR_CAMPO_OP:C01.2='';ATRIBUIR_CAMPO_OP:C01.3='';ATRIBUIR_CAMPO_OP:C01.4='';ATRIBUIR_CAMPO_OP:C01.5='';ATRIBUIR_CAMPO_OP:C01.6='';ATRIBUIR_CAMPO_OP:C01.7='';ATRIBUIR_CAMPO_OP:C01.8='';ATRIBUIR_CAMPO_OP:C01.9='';"
                        },
                        {
                            id: "C01.1",
                            titulo: "C01.1 - Automóveis (fabricados até 1999)",
                            campo: { tipo: "numerico", titulo: "Quantidade" },
                            regras: "DESMARCAR:C01.0;"
                        },
                        {
                            id: "C01.2",
                            titulo: "C01.2 - Automóveis (2000 até 2009)",
                            campo: { tipo: "numerico", titulo: "Quantidade" },
                            regras: "DESMARCAR:C01.0;"
                        },
                        {
                            id: "C01.3",
                            titulo: "C01.3 - Automóveis (2010 ou mais)",
                            campo: { tipo: "numerico", titulo: "Quantidade" },
                            regras: "DESMARCAR:C01.0;"
                        },
                        {
                            id: "C01.4",
                            titulo: "C01.4 - Utilitário ",
                            campo: { tipo: "numerico", titulo: "Quantidade" },
                            regras: "DESMARCAR:C01.0;"
                        },
                        {
                            id: "C01.5",
                            titulo: "C01.5 - Carga ",
                            campo: { tipo: "numerico", titulo: "Quantidade" },
                            regras: "DESMARCAR:C01.0;"
                        },
                        {
                            id: "C01.6",
                            titulo: "C01.6 - Motocicleta ",
                            campo: { tipo: "numerico", titulo: "Quantidade" },
                            regras: "DESMARCAR:C01.0;"
                        },
                        {
                            id: "C01.7",
                            titulo: "C01.7 - Bicicleta ",
                            campo: { tipo: "numerico", titulo: "Quantidade" },
                            regras: "DESMARCAR:C01.0;"
                        },
                        {
                            id: "C01.8",
                            titulo: "C01.8 - Carroça",
                            campo: { tipo: "numerico", titulo: "Quantidade" },
                            regras: "DESMARCAR:C01.0;"
                        },
                        {
                            id: "C01.9",
                            titulo: "C01.9 - Outros",
                            campo: { tipo: "numerico", titulo: "Quantidade" },
                            regras: "DESMARCAR:C01.0;"
                        }
                    ]
                },
                {
                    id: "C02",
                    titulo: "C02 - Emplacamento veículos",
                    tipo: "multipla-selecao",
                    opcoes: [
                        {
                            id: "C02.0",
                            titulo: "C02.0 - Não tem veículos",
                            regras: "ATRIBUIR_CAMPO_OP:C02.1='';ATRIBUIR_CAMPO_OP:C02.2='';ATRIBUIR_CAMPO_OP:C02.3=''"
                        },
                        {
                            id: "C02.1",
                            titulo: "C02.1 - No município  ",
                            campo: { tipo: "numerico", titulo: "Quantidade" },
                            regras: "DESMARCAR:C02.0;"
                        },
                        {
                            id: "C02.2",
                            titulo: "C02.2 - No DF",
                            campo: { tipo: "numerico", titulo: "Quantidade" },
                            regras: "DESMARCAR:C02.0;"
                        },
                        {
                            id: "C02.3",
                            titulo: "C02.3 - Outro Local ",
                            campo: { tipo: "numerico", titulo: "Quantidade" },
                            regras: "DESMARCAR:C02.0;"
                        },
                    ]
                },
                {
                    id: "C03",
                    titulo: "C03 - Serviços Domiciliares",
                    tipo: "multipla-selecao",
                    opcoes: [
                        {
                            id: "C03.0",
                            titulo: "C03.0 - Não tem",
                            regras: "DESMARCAR:C03.1;DESMARCAR:C03.2;DESMARCAR:C03.3;DESMARCAR:C03.4;"
                        },
                        {
                            id: "C03.1",
                            titulo: "C03.1 - Internet (Wifi e ou 3G/4G)    ",
                            regras: "DESMARCAR:C03.0;"
                        },
                        {
                            id: "C03.2",
                            titulo: "C03.2 - TV por Assinatura",
                            regras: "DESMARCAR:C03.0;"
                        },
                        {
                            id: "C03.3",
                            titulo: "C03.3 - Assinatura de jornais ",
                            regras: "DESMARCAR:C03.0;"
                        },
                        {
                            id: "C03.4",
                            titulo: "C03.4 - Assinatura de revistas",
                            regras: "DESMARCAR:C03.0;"
                        },
                    ]
                },
                {
                    id: "C04",
                    titulo: "C04 - Equipamentos",
                    tipo: "multipla-selecao",
                    opcoes: [
                        
                        {
                            id: "C04.01",
                            titulo: "C04.01 - Quantas Placas de energia/aquecedor solar?",
                            campo: { tipo: "numerico", titulo: "Quantidade" },
                            regras: "DESMARCAR:C04.00;"
                        },
                        {
                            id: "C04.02",
                            titulo: "C04.02 - Quantos Ar condicionados?",
                            campo: { tipo: "numerico", titulo: "Quantidade" },
                            regras: "DESMARCAR:C04.00;"
                        },
                        {
                            id: "C04.03",
                            titulo: "C04.03 - Quantos Circuladores de ar e/ou ventiladores?",
                            campo: { tipo: "numerico", titulo: "Quantidade" },
                            regras: "DESMARCAR:C04.00;"
                        },
                        {
                            id: "C04.04",
                            titulo: "C04.04 - Quantos Fogões?",
                            campo: { tipo: "numerico", titulo: "Quantidade" },
                            regras: "DESMARCAR:C04.00;"
                        },
                        {
                            id: "C04.05",
                            titulo: "C04.05 - Quantos Fornos micro-ondas?",
                            campo: { tipo: "numerico", titulo: "Quantidade" },
                            regras: "DESMARCAR:C04.00;"
                        },
                        {
                            id: "C04.06",
                            titulo: "C04.06 - Quantos Fornos elétricos?",
                            campo: { tipo: "numerico", titulo: "Quantidade" },
                            regras: "DESMARCAR:C04.00;"
                        },
                        {
                            id: "C04.07",
                            titulo: "C04.07 - Quantos Freezers?",
                            campo: { tipo: "numerico", titulo: "Quantidade" },
                            regras: "DESMARCAR:C04.00;"
                        },
                        {
                            id: "C04.08",
                            titulo: "C04.08 - Quantas Geladeiras?",
                            campo: { tipo: "numerico", titulo: "Quantidade" },
                            regras: "DESMARCAR:C04.00;"
                        },
                        {
                            id: "C04.09",
                            titulo: "C04.09 - Quantos Ipod e similares?",
                            campo: { tipo: "numerico", titulo: "Quantidade" },
                            regras: "DESMARCAR:C04.00;"
                        },
                        {
                            id: "C04.10",
                            titulo: "C04.10 - Quantas Máquinas de lavar roupa?",
                            campo: { tipo: "numerico", titulo: "Quantidade" },
                            regras: "DESMARCAR:C04.00;"
                        },
                        {
                            id: "C04.11",
                            titulo: "C04.11 - Quantas Máquinas de lavar louça?",
                            campo: { tipo: "numerico", titulo: "Quantidade" },
                            regras: "DESMARCAR:C04.00;"
                        },
                        {
                            id: "C04.12",
                            titulo: "C04.12 - Quantas Máquinas de fotográfica digital?",
                            campo: { tipo: "numerico", titulo: "Quantidade" },
                            regras: "DESMARCAR:C04.00;"
                        },
                        {
                            id: "C04.13",
                            titulo: "C04.13 - Quantos Microcomputadores/Desktop?",
                            campo: { tipo: "numerico", titulo: "Quantidade" },
                            regras: "DESMARCAR:C04.00;"
                        },
                        {
                            id: "C04.14",
                            titulo: "C04.14 - Quantos Notebook/Laptop? ",
                            campo: { tipo: "numerico", titulo: "Quantidade" },
                            regras: "DESMARCAR:C04.00;"
                        },
                        {
                            id: "C04.15",
                            titulo: "C04.15 - Quantos Tablets/Ipad?",
                            campo: { tipo: "numerico", titulo: "Quantidade" },
                            regras: "DESMARCAR:C04.00;"
                        },
                        {
                            id: "C04.16",
                            titulo: "C04.16 - Quantos Tanquinhos elétricos?",
                            campo: { tipo: "numerico", titulo: "Quantidade" },
                            regras: "DESMARCAR:C04.00;"
                        },
                        {
                            id: "C04.17",
                            titulo: "C04.17 - Quantos Telefones fixos?",
                            campo: { tipo: "numerico", titulo: "Quantidade" },
                            regras: "DESMARCAR:C04.00;"
                        },
                        {
                            id: "C04.18",
                            titulo: "C04.18 - Quantos Telefones celulares pré-pago?",
                            campo: { tipo: "numerico", titulo: "Quantidade" },
                            regras: "DESMARCAR:C04.00;"
                        },
                        {
                            id: "C04.19",
                            titulo: "C04.19 - Quantos Telefones celulares pós-pago?",
                            campo: { tipo: "numerico", titulo: "Quantidade" },
                            regras: "DESMARCAR:C04.00;"
                        },
                        {
                            id: "C04.20",
                            titulo: "C04.20 - Quantos Televisores (tubo)?",
                            campo: { tipo: "numerico", titulo: "Quantidade" },
                            regras: "DESMARCAR:C04.00;"
                        },
                        {
                            id: "C04.21",
                            titulo: "C04.21 - Quantos Televisores tela fina/plana",
                            campo: { tipo: "numerico", titulo: "Quantidade" },
                            regras: "DESMARCAR:C04.00;"
                        },
                        {
                            id: "C04.22",
                            titulo: "C04.22 - Quantos Umidificadores?",
                            campo: { tipo: "numerico", titulo: "Quantidade" },
                            regras: "DESMARCAR:C04.00;"
                        },
                        {
                            id: "C04.77",
                            titulo: "C04.77 - Não quis responder",
                            regras: "ATRIBUIR_CAMPO_OP:C04.01='';ATRIBUIR_CAMPO_OP:C04.02='';ATRIBUIR_CAMPO_OP:C04.03='';ATRIBUIR_CAMPO_OP:C04.04='';ATRIBUIR_CAMPO_OP:C04.05='';ATRIBUIR_CAMPO_OP:C04.06='';ATRIBUIR_CAMPO_OP:C04.07='';ATRIBUIR_CAMPO_OP:C04.08='';ATRIBUIR_CAMPO_OP:C04.09='';ATRIBUIR_CAMPO_OP:C04.10='';ATRIBUIR_CAMPO_OP:C04.11='';ATRIBUIR_CAMPO_OP:C04.12='';ATRIBUIR_CAMPO_OP:C04.13='';ATRIBUIR_CAMPO_OP:C04.14='';ATRIBUIR_CAMPO_OP:C04.15='';ATRIBUIR_CAMPO_OP:C04.16='';ATRIBUIR_CAMPO_OP:C04.17='';ATRIBUIR_CAMPO_OP:C04.18='';ATRIBUIR_CAMPO_OP:C04.19='';ATRIBUIR_CAMPO_OP:C04.20='';ATRIBUIR_CAMPO_OP:C04.21='';ATRIBUIR_CAMPO_OP:C04.22='';"
                        },
                        {
                            id: "C04.00",
                            titulo: "C04.00 - Não tem",
                            regras: "ATRIBUIR_CAMPO_OP:C04.01='';ATRIBUIR_CAMPO_OP:C04.02='';ATRIBUIR_CAMPO_OP:C04.03='';ATRIBUIR_CAMPO_OP:C04.04='';ATRIBUIR_CAMPO_OP:C04.05='';ATRIBUIR_CAMPO_OP:C04.06='';ATRIBUIR_CAMPO_OP:C04.07='';ATRIBUIR_CAMPO_OP:C04.08='';ATRIBUIR_CAMPO_OP:C04.09='';ATRIBUIR_CAMPO_OP:C04.10='';ATRIBUIR_CAMPO_OP:C04.11='';ATRIBUIR_CAMPO_OP:C04.12='';ATRIBUIR_CAMPO_OP:C04.13='';ATRIBUIR_CAMPO_OP:C04.14='';ATRIBUIR_CAMPO_OP:C04.15='';ATRIBUIR_CAMPO_OP:C04.16='';ATRIBUIR_CAMPO_OP:C04.17='';ATRIBUIR_CAMPO_OP:C04.18='';ATRIBUIR_CAMPO_OP:C04.19='';ATRIBUIR_CAMPO_OP:C04.20='';ATRIBUIR_CAMPO_OP:C04.21='';ATRIBUIR_CAMPO_OP:C04.22='';"
                        }
                    ]
                },
                {
                    id: "C05",
                    titulo: "C05 - Serviços Domésticos",
                    tipo: "multipla-selecao",
                    opcoes: [
                        {
                            id: "C05.0",
                            titulo: "C05.0 - Não tem empregado doméstico",
                            regras: "ATRIBUIR_CAMPO_OP:C05.1='';ATRIBUIR_CAMPO_OP:C05.2='';ATRIBUIR_CAMPO_OP:C05.3=''"
                        },
                        {
                            id: "C05.1",
                            titulo: "C05.1 - Mensalista morador do domicílio",
                            campo: { tipo: "numerico", titulo: "Quantidade" },
                            regras: "DESMARCAR:C05.0;"
                        },
                        {
                            id: "C05.2",
                            titulo: "C05.2 - Mensalista não morador do domicílio",
                            campo: { tipo: "numerico", titulo: "Quantidade" },
                            regras: "DESMARCAR:C05.0;"
                        },
                        {
                            id: "C05.3",
                            titulo: "C05.3 - Diarista",
                            campo: { tipo: "numerico", titulo: "Quantidade" },
                            regras: "DESMARCAR:C05.0;"
                        }
                    ]
                },
                {
                    "id": "C06",
                    "titulo": "C06 - Locais de Compras da Família",
                    items: [
                        {
                            id: "C06.1",
                            titulo: "C06.1 - Local de compras de Alimentação (Predominante)",
                            opcoes: [
                                
                                { id: "C06.01", titulo: "C06.01 - Plano Piloto" },
                                { id: "C06.02", titulo: "C06.02 - Gama" },
                                { id: "C06.03", titulo: "C06.03 - Taguatinga" },
                                { id: "C06.04", titulo: "C06.04 - Brazlândia" },
                                { id: "C06.05", titulo: "C06.05 - Sobradinho" },
                                { id: "C06.06", titulo: "C06.06 - Planaltina" },
                                { id: "C06.07", titulo: "C06.07 - Paranoá" },
                                { id: "C06.08", titulo: "C06.08 - Núcleo Bandeirante" },
                                { id: "C06.09", titulo: "C06.09 - Ceilândia" },
                                { id: "C06.10", titulo: "C06.10 - Guará" },
                                { id: "C06.11", titulo: "C06.11 - Cruzeiro" },
                                { id: "C06.12", titulo: "C06.12 - Samambaia" },
                                { id: "C06.13", titulo: "C06.13 - Santa Maria" },
                                { id: "C06.14", titulo: "C06.14 - São Sebastião" },
                                { id: "C06.15", titulo: "C06.15 - Recanto das Emas" },
                                { id: "C06.16", titulo: "C06.16 - Lago Sul" },
                                { id: "C06.17", titulo: "C06.17 - Riacho Fundo" },
                                { id: "C06.18", titulo: "C06.18 - Lago Norte" },
                                { id: "C06.19", titulo: "C06.19 - Candangolândia" },
                                { id: "C06.20", titulo: "C06.20 - Águas Claras" },
                                { id: "C06.21", titulo: "C06.21 - Riacho Fundo II" },
                                { id: "C06.22", titulo: "C06.22 - Sudoeste / Octogonal" },
                                { id: "C06.23", titulo: "C06.23 - Varjão" },
                                { id: "C06.24", titulo: "C06.24 - Park Way" },
                                { id: "C06.25", titulo: "C06.25 - SCIA - Estrutural" },
                                { id: "C06.26", titulo: "C06.26 - Sobradinho II" },
                                { id: "C06.27", titulo: "C06.27 - Jardim Botânico" },
                                { id: "C06.28", titulo: "C06.28 - Itapoã" },
                                { id: "C06.29", titulo: "C06.29 - SIA" },
                                { id: "C06.30", titulo: "C06.30 - Vicente Pires" },
                                { id: "C06.31", titulo: "C06.31 - Fercal" },
                                { id: "C06.32", titulo: "C06.32 - Vários locais do DF" },
                                { id: "C06.41", titulo: "C06.41 - Aguas Lindas de Goiás" },
                                { id: "C06.42", titulo: "C06.42 - Alexânia " },
                                { id: "C06.43", titulo: "C06.43 - Cidade Ocidental(Sede e ABC)" },
                                { id: "C06.44", titulo: "C06.44 - Cristalina(Sede, Campos Lindos / Marajó)" },
                                { id: "C06.45", titulo: "C06.45 - Cocalzinho de Goiás(Sede, Girassol / Edilândia)" },
                                { id: "C06.46", titulo: "C06.46 - Formosa" },
                                { id: "C06.47", titulo: "C06.47 - Luziânia(Sede e Distritos)" },
                                { id: "C06.48", titulo: "C06.48 - Novo Gama" },
                                { id: "C06.49", titulo: "C06.49 - Padre Bernardo(Sede, Monte Alto)" },
                                { id: "C06.50", titulo: "C06.50 - Planaltina" },
                                { id: "C06.51", titulo: "C06.51 - Santo Antônio do Descoberto" },
                                { id: "C06.52", titulo: "C06.52 - Valparaíso de Goiás" },
                                { id: "C06.53", titulo: "C06.53 - Outros municípios da RIDE" },
                                { id: "C06.54", titulo: "C06.54 - Anápolis" },
                                { id: "C06.55", titulo: "C06.55 - Goiânia" },
                                { id: "C06.56", titulo: "C06.56 - Outros locais" },
                                { id: "C06.88", titulo: "C06.88 - Não sabe/não quis responder" },
                                { id: "C06.00", titulo: "C06.00 - Não compra" }
                            ]
                        },
                        {
                            id: "C06.2",
                            titulo: "C06.2 - Local de compras de Roupas/calçados (Predominante)",
                            opcoes: [
                               
                                { id: "C06.01", titulo: "C06.01 - Plano Piloto" },
                                { id: "C06.02", titulo: "C06.02 - Gama" },
                                { id: "C06.03", titulo: "C06.03 - Taguatinga" },
                                { id: "C06.04", titulo: "C06.04 - Brazlândia" },
                                { id: "C06.05", titulo: "C06.05 - Sobradinho" },
                                { id: "C06.06", titulo: "C06.06 - Planaltina" },
                                { id: "C06.07", titulo: "C06.07 - Paranoá" },
                                { id: "C06.08", titulo: "C06.08 - Núcleo Bandeirante" },
                                { id: "C06.09", titulo: "C06.09 - Ceilândia" },
                                { id: "C06.10", titulo: "C06.10 - Guará" },
                                { id: "C06.11", titulo: "C06.11 - Cruzeiro" },
                                { id: "C06.12", titulo: "C06.12 - Samambaia" },
                                { id: "C06.13", titulo: "C06.13 - Santa Maria" },
                                { id: "C06.14", titulo: "C06.14 - São Sebastião" },
                                { id: "C06.15", titulo: "C06.15 - Recanto das Emas" },
                                { id: "C06.16", titulo: "C06.16 - Lago Sul" },
                                { id: "C06.17", titulo: "C06.17 - Riacho Fundo" },
                                { id: "C06.18", titulo: "C06.18 - Lago Norte" },
                                { id: "C06.19", titulo: "C06.19 - Candangolândia" },
                                { id: "C06.20", titulo: "C06.20 - Águas Claras" },
                                { id: "C06.21", titulo: "C06.21 - Riacho Fundo II" },
                                { id: "C06.22", titulo: "C06.22 - Sudoeste / Octogonal" },
                                { id: "C06.23", titulo: "C06.23 - Varjão" },
                                { id: "C06.24", titulo: "C06.24 - Park Way" },
                                { id: "C06.25", titulo: "C06.25 - SCIA - Estrutural" },
                                { id: "C06.26", titulo: "C06.26 - Sobradinho II" },
                                { id: "C06.27", titulo: "C06.27 - Jardim Botânico" },
                                { id: "C06.28", titulo: "C06.28 - Itapoã" },
                                { id: "C06.29", titulo: "C06.29 - SIA" },
                                { id: "C06.30", titulo: "C06.30 - Vicente Pires" },
                                { id: "C06.31", titulo: "C06.31 - Fercal" },
                                { id: "C06.32", titulo: "C06.32 - Vários locais do DF" },
                                { id: "C06.41", titulo: "C06.41 - Aguas Lindas de Goiás" },
                                { id: "C06.42", titulo: "C06.42 - Alexânia " },
                                { id: "C06.43", titulo: "C06.43 - Cidade Ocidental(Sede e ABC)" },
                                { id: "C06.44", titulo: "C06.44 - Cristalina(Sede, Campos Lindos / Marajó)" },
                                { id: "C06.45", titulo: "C06.45 - Cocalzinho de Goiás(Sede, Girassol / Edilândia)" },
                                { id: "C06.46", titulo: "C06.46 - Formosa" },
                                { id: "C06.47", titulo: "C06.47 - Luziânia(Sede e Distritos)" },
                                { id: "C06.48", titulo: "C06.48 - Novo Gama" },
                                { id: "C06.49", titulo: "C06.49 - Padre Bernardo(Sede, Monte Alto)" },
                                { id: "C06.50", titulo: "C06.50 - Planaltina" },
                                { id: "C06.51", titulo: "C06.51 - Santo Antônio do Descoberto" },
                                { id: "C06.52", titulo: "C06.52 - Valparaíso de Goiás" },
                                { id: "C06.53", titulo: "C06.53 - Outros municípios da RIDE" },
                                { id: "C06.54", titulo: "C06.54 - Anápolis" },
                                { id: "C06.55", titulo: "C06.55 - Goiânia" },
                                { id: "C06.56", titulo: "C06.56 - Outros locais" },
                                { id: "C06.88", titulo: "C06.88 - Não sabe/não quis responder" },
                                { id: "C06.00", titulo: "C06.00 - Não compra" }
                            ]
                        },
                        {
                            id: "C06.3",
                            titulo: "C06.3 - Local de compras de Eletrodomésticos (Predominante)",
                            opcoes: [
                               
                                { id: "C06.01", titulo: "C06.01 - Plano Piloto" },
                                { id: "C06.02", titulo: "C06.02 - Gama" },
                                { id: "C06.03", titulo: "C06.03 - Taguatinga" },
                                { id: "C06.04", titulo: "C06.04 - Brazlândia" },
                                { id: "C06.05", titulo: "C06.05 - Sobradinho" },
                                { id: "C06.06", titulo: "C06.06 - Planaltina" },
                                { id: "C06.07", titulo: "C06.07 - Paranoá" },
                                { id: "C06.08", titulo: "C06.08 - Núcleo Bandeirante" },
                                { id: "C06.09", titulo: "C06.09 - Ceilândia" },
                                { id: "C06.10", titulo: "C06.10 - Guará" },
                                { id: "C06.11", titulo: "C06.11 - Cruzeiro" },
                                { id: "C06.12", titulo: "C06.12 - Samambaia" },
                                { id: "C06.13", titulo: "C06.13 - Santa Maria" },
                                { id: "C06.14", titulo: "C06.14 - São Sebastião" },
                                { id: "C06.15", titulo: "C06.15 - Recanto das Emas" },
                                { id: "C06.16", titulo: "C06.16 - Lago Sul" },
                                { id: "C06.17", titulo: "C06.17 - Riacho Fundo" },
                                { id: "C06.18", titulo: "C06.18 - Lago Norte" },
                                { id: "C06.19", titulo: "C06.19 - Candangolândia" },
                                { id: "C06.20", titulo: "C06.20 - Águas Claras" },
                                { id: "C06.21", titulo: "C06.21 - Riacho Fundo II" },
                                { id: "C06.22", titulo: "C06.22 - Sudoeste / Octogonal" },
                                { id: "C06.23", titulo: "C06.23 - Varjão" },
                                { id: "C06.24", titulo: "C06.24 - Park Way" },
                                { id: "C06.25", titulo: "C06.25 - SCIA - Estrutural" },
                                { id: "C06.26", titulo: "C06.26 - Sobradinho II" },
                                { id: "C06.27", titulo: "C06.27 - Jardim Botânico" },
                                { id: "C06.28", titulo: "C06.28 - Itapoã" },
                                { id: "C06.29", titulo: "C06.29 - SIA" },
                                { id: "C06.30", titulo: "C06.30 - Vicente Pires" },
                                { id: "C06.31", titulo: "C06.31 - Fercal" },
                                { id: "C06.32", titulo: "C06.32 - Vários locais do DF" },
                                { id: "C06.41", titulo: "C06.41 - Aguas Lindas de Goiás" },
                                { id: "C06.42", titulo: "C06.42 - Alexânia " },
                                { id: "C06.43", titulo: "C06.43 - Cidade Ocidental(Sede e ABC)" },
                                { id: "C06.44", titulo: "C06.44 - Cristalina(Sede, Campos Lindos / Marajó)" },
                                { id: "C06.45", titulo: "C06.45 - Cocalzinho de Goiás(Sede, Girassol / Edilândia)" },
                                { id: "C06.46", titulo: "C06.46 - Formosa" },
                                { id: "C06.47", titulo: "C06.47 - Luziânia(Sede e Distritos)" },
                                { id: "C06.48", titulo: "C06.48 - Novo Gama" },
                                { id: "C06.49", titulo: "C06.49 - Padre Bernardo(Sede, Monte Alto)" },
                                { id: "C06.50", titulo: "C06.50 - Planaltina" },
                                { id: "C06.51", titulo: "C06.51 - Santo Antônio do Descoberto" },
                                { id: "C06.52", titulo: "C06.52 - Valparaíso de Goiás" },
                                { id: "C06.53", titulo: "C06.53 - Outros municípios da RIDE" },
                                { id: "C06.54", titulo: "C06.54 - Anápolis" },
                                { id: "C06.55", titulo: "C06.55 - Goiânia" },
                                { id: "C06.56", titulo: "C06.56 - Outros locais" },
                                { id: "C06.88", titulo: "C06.88 - Não sabe/não quis responder" },
                                { id: "C06.00", titulo: "C06.00 - Não compra" }
                            ]
                        },
                        {
                            id: "C06.4",
                            titulo: "C06.4 - Local de compras de Serviços pessoais (Predominante)",
                            opcoes: [
                               
                                { id: "C06.01", titulo: "C06.01 - Plano Piloto" },
                                { id: "C06.02", titulo: "C06.02 - Gama" },
                                { id: "C06.03", titulo: "C06.03 - Taguatinga" },
                                { id: "C06.04", titulo: "C06.04 - Brazlândia" },
                                { id: "C06.05", titulo: "C06.05 - Sobradinho" },
                                { id: "C06.06", titulo: "C06.06 - Planaltina" },
                                { id: "C06.07", titulo: "C06.07 - Paranoá" },
                                { id: "C06.08", titulo: "C06.08 - Núcleo Bandeirante" },
                                { id: "C06.09", titulo: "C06.09 - Ceilândia" },
                                { id: "C06.10", titulo: "C06.10 - Guará" },
                                { id: "C06.11", titulo: "C06.11 - Cruzeiro" },
                                { id: "C06.12", titulo: "C06.12 - Samambaia" },
                                { id: "C06.13", titulo: "C06.13 - Santa Maria" },
                                { id: "C06.14", titulo: "C06.14 - São Sebastião" },
                                { id: "C06.15", titulo: "C06.15 - Recanto das Emas" },
                                { id: "C06.16", titulo: "C06.16 - Lago Sul" },
                                { id: "C06.17", titulo: "C06.17 - Riacho Fundo" },
                                { id: "C06.18", titulo: "C06.18 - Lago Norte" },
                                { id: "C06.19", titulo: "C06.19 - Candangolândia" },
                                { id: "C06.20", titulo: "C06.20 - Águas Claras" },
                                { id: "C06.21", titulo: "C06.21 - Riacho Fundo II" },
                                { id: "C06.22", titulo: "C06.22 - Sudoeste / Octogonal" },
                                { id: "C06.23", titulo: "C06.23 - Varjão" },
                                { id: "C06.24", titulo: "C06.24 - Park Way" },
                                { id: "C06.25", titulo: "C06.25 - SCIA - Estrutural" },
                                { id: "C06.26", titulo: "C06.26 - Sobradinho II" },
                                { id: "C06.27", titulo: "C06.27 - Jardim Botânico" },
                                { id: "C06.28", titulo: "C06.28 - Itapoã" },
                                { id: "C06.29", titulo: "C06.29 - SIA" },
                                { id: "C06.30", titulo: "C06.30 - Vicente Pires" },
                                { id: "C06.31", titulo: "C06.31 - Fercal" },
                                { id: "C06.32", titulo: "C06.32 - Vários locais do DF" },
                                { id: "C06.41", titulo: "C06.41 - Aguas Lindas de Goiás" },
                                { id: "C06.42", titulo: "C06.42 - Alexânia " },
                                { id: "C06.43", titulo: "C06.43 - Cidade Ocidental(Sede e ABC)" },
                                { id: "C06.44", titulo: "C06.44 - Cristalina(Sede, Campos Lindos / Marajó)" },
                                { id: "C06.45", titulo: "C06.45 - Cocalzinho de Goiás(Sede, Girassol / Edilândia)" },
                                { id: "C06.46", titulo: "C06.46 - Formosa" },
                                { id: "C06.47", titulo: "C06.47 - Luziânia(Sede e Distritos)" },
                                { id: "C06.48", titulo: "C06.48 - Novo Gama" },
                                { id: "C06.49", titulo: "C06.49 - Padre Bernardo(Sede, Monte Alto)" },
                                { id: "C06.50", titulo: "C06.50 - Planaltina" },
                                { id: "C06.51", titulo: "C06.51 - Santo Antônio do Descoberto" },
                                { id: "C06.52", titulo: "C06.52 - Valparaíso de Goiás" },
                                { id: "C06.53", titulo: "C06.53 - Outros municípios da RIDE" },
                                { id: "C06.54", titulo: "C06.54 - Anápolis" },
                                { id: "C06.55", titulo: "C06.55 - Goiânia" },
                                { id: "C06.56", titulo: "C06.56 - Outros locais" },
                                { id: "C06.88", titulo: "C06.88 - Não sabe/não quis responder" },
                                { id: "C06.00", titulo: "C06.00 - Não compra" }
                            ]
                        },
                        {
                            id: "C06.5",
                            titulo: "C06.5 - Local de compras de Serviços em geral (Predominante)",
                            opcoes: [
                                
                                { id: "C06.01", titulo: "C06.01 - Plano Piloto" },
                                { id: "C06.02", titulo: "C06.02 - Gama" },
                                { id: "C06.03", titulo: "C06.03 - Taguatinga" },
                                { id: "C06.04", titulo: "C06.04 - Brazlândia" },
                                { id: "C06.05", titulo: "C06.05 - Sobradinho" },
                                { id: "C06.06", titulo: "C06.06 - Planaltina" },
                                { id: "C06.07", titulo: "C06.07 - Paranoá" },
                                { id: "C06.08", titulo: "C06.08 - Núcleo Bandeirante" },
                                { id: "C06.09", titulo: "C06.09 - Ceilândia" },
                                { id: "C06.10", titulo: "C06.10 - Guará" },
                                { id: "C06.11", titulo: "C06.11 - Cruzeiro" },
                                { id: "C06.12", titulo: "C06.12 - Samambaia" },
                                { id: "C06.13", titulo: "C06.13 - Santa Maria" },
                                { id: "C06.14", titulo: "C06.14 - São Sebastião" },
                                { id: "C06.15", titulo: "C06.15 - Recanto das Emas" },
                                { id: "C06.16", titulo: "C06.16 - Lago Sul" },
                                { id: "C06.17", titulo: "C06.17 - Riacho Fundo" },
                                { id: "C06.18", titulo: "C06.18 - Lago Norte" },
                                { id: "C06.19", titulo: "C06.19 - Candangolândia" },
                                { id: "C06.20", titulo: "C06.20 - Águas Claras" },
                                { id: "C06.21", titulo: "C06.21 - Riacho Fundo II" },
                                { id: "C06.22", titulo: "C06.22 - Sudoeste / Octogonal" },
                                { id: "C06.23", titulo: "C06.23 - Varjão" },
                                { id: "C06.24", titulo: "C06.24 - Park Way" },
                                { id: "C06.25", titulo: "C06.25 - SCIA - Estrutural" },
                                { id: "C06.26", titulo: "C06.26 - Sobradinho II" },
                                { id: "C06.27", titulo: "C06.27 - Jardim Botânico" },
                                { id: "C06.28", titulo: "C06.28 - Itapoã" },
                                { id: "C06.29", titulo: "C06.29 - SIA" },
                                { id: "C06.30", titulo: "C06.30 - Vicente Pires" },
                                { id: "C06.31", titulo: "C06.31 - Fercal" },
                                { id: "C06.32", titulo: "C06.32 - Vários locais do DF" },
                                { id: "C06.41", titulo: "C06.41 - Aguas Lindas de Goiás" },
                                { id: "C06.42", titulo: "C06.42 - Alexânia " },
                                { id: "C06.43", titulo: "C06.43 - Cidade Ocidental(Sede e ABC)" },
                                { id: "C06.44", titulo: "C06.44 - Cristalina(Sede, Campos Lindos / Marajó)" },
                                { id: "C06.45", titulo: "C06.45 - Cocalzinho de Goiás(Sede, Girassol / Edilândia)" },
                                { id: "C06.46", titulo: "C06.46 - Formosa" },
                                { id: "C06.47", titulo: "C06.47 - Luziânia(Sede e Distritos)" },
                                { id: "C06.48", titulo: "C06.48 - Novo Gama" },
                                { id: "C06.49", titulo: "C06.49 - Padre Bernardo(Sede, Monte Alto)" },
                                { id: "C06.50", titulo: "C06.50 - Planaltina" },
                                { id: "C06.51", titulo: "C06.51 - Santo Antônio do Descoberto" },
                                { id: "C06.52", titulo: "C06.52 - Valparaíso de Goiás" },
                                { id: "C06.53", titulo: "C06.53 - Outros municípios da RIDE" },
                                { id: "C06.54", titulo: "C06.54 - Anápolis" },
                                { id: "C06.55", titulo: "C06.55 - Goiânia" },
                                { id: "C06.56", titulo: "C06.56 - Outros locais" },
                                { id: "C06.88", titulo: "C06.88 - Não sabe/não quis responder" },
                                { id: "C06.00", titulo: "C06.00 - Não compra" }
                            ]
                        },
                        {
                            id: "C06.6",
                            titulo: "C06.6 - Local de Cultura e lazer (Predominante)",
                            opcoes: [
                               
                                { id: "C06.01", titulo: "C06.01 - Plano Piloto" },
                                { id: "C06.02", titulo: "C06.02 - Gama" },
                                { id: "C06.03", titulo: "C06.03 - Taguatinga" },
                                { id: "C06.04", titulo: "C06.04 - Brazlândia" },
                                { id: "C06.05", titulo: "C06.05 - Sobradinho" },
                                { id: "C06.06", titulo: "C06.06 - Planaltina" },
                                { id: "C06.07", titulo: "C06.07 - Paranoá" },
                                { id: "C06.08", titulo: "C06.08 - Núcleo Bandeirante" },
                                { id: "C06.09", titulo: "C06.09 - Ceilândia" },
                                { id: "C06.10", titulo: "C06.10 - Guará" },
                                { id: "C06.11", titulo: "C06.11 - Cruzeiro" },
                                { id: "C06.12", titulo: "C06.12 - Samambaia" },
                                { id: "C06.13", titulo: "C06.13 - Santa Maria" },
                                { id: "C06.14", titulo: "C06.14 - São Sebastião" },
                                { id: "C06.15", titulo: "C06.15 - Recanto das Emas" },
                                { id: "C06.16", titulo: "C06.16 - Lago Sul" },
                                { id: "C06.17", titulo: "C06.17 - Riacho Fundo" },
                                { id: "C06.18", titulo: "C06.18 - Lago Norte" },
                                { id: "C06.19", titulo: "C06.19 - Candangolândia" },
                                { id: "C06.20", titulo: "C06.20 - Águas Claras" },
                                { id: "C06.21", titulo: "C06.21 - Riacho Fundo II" },
                                { id: "C06.22", titulo: "C06.22 - Sudoeste / Octogonal" },
                                { id: "C06.23", titulo: "C06.23 - Varjão" },
                                { id: "C06.24", titulo: "C06.24 - Park Way" },
                                { id: "C06.25", titulo: "C06.25 - SCIA - Estrutural" },
                                { id: "C06.26", titulo: "C06.26 - Sobradinho II" },
                                { id: "C06.27", titulo: "C06.27 - Jardim Botânico" },
                                { id: "C06.28", titulo: "C06.28 - Itapoã" },
                                { id: "C06.29", titulo: "C06.29 - SIA" },
                                { id: "C06.30", titulo: "C06.30 - Vicente Pires" },
                                { id: "C06.31", titulo: "C06.31 - Fercal" },
                                { id: "C06.32", titulo: "C06.32 - Vários locais do DF" },
                                { id: "C06.41", titulo: "C06.41 - Aguas Lindas de Goiás" },
                                { id: "C06.42", titulo: "C06.42 - Alexânia " },
                                { id: "C06.43", titulo: "C06.43 - Cidade Ocidental(Sede e ABC)" },
                                { id: "C06.44", titulo: "C06.44 - Cristalina(Sede, Campos Lindos / Marajó)" },
                                { id: "C06.45", titulo: "C06.45 - Cocalzinho de Goiás(Sede, Girassol / Edilândia)" },
                                { id: "C06.46", titulo: "C06.46 - Formosa" },
                                { id: "C06.47", titulo: "C06.47 - Luziânia(Sede e Distritos)" },
                                { id: "C06.48", titulo: "C06.48 - Novo Gama" },
                                { id: "C06.49", titulo: "C06.49 - Padre Bernardo(Sede, Monte Alto)" },
                                { id: "C06.50", titulo: "C06.50 - Planaltina" },
                                { id: "C06.51", titulo: "C06.51 - Santo Antônio do Descoberto" },
                                { id: "C06.52", titulo: "C06.52 - Valparaíso de Goiás" },
                                { id: "C06.53", titulo: "C06.53 - Outros municípios da RIDE" },
                                { id: "C06.54", titulo: "C06.54 - Anápolis" },
                                { id: "C06.55", titulo: "C06.55 - Goiânia" },
                                { id: "C06.56", titulo: "C06.56 - Outros locais" },
                                { id: "C06.88", titulo: "C06.88 - Não sabe/não quis responder" },
                                { id: "C06.00", titulo: "C06.00 - Não compra" }
                            ]
                        }
                   ]
                },
                {
                    "id": "C07",
                    "titulo": "C07 - Existência de Bancos",
                    "opcoes": [
                        { "id": "C07.1", "titulo": "C07.1 - Existem vários na região" },
                        { "id": "C07.2", "titulo": "C07.2 - Não tem banco" },
                        { "id": "C07.3", "titulo": "C07.3 - Não há bancos suficientes" },
                        { "id": "C07.8", "titulo": "C07.8 - Não sabe/não quis responder" }
                    ]
                },
                {
                    "id": "C08",
                    "titulo": "C08 - Em relação aos serviços bancários",
                    "opcoes": [
                        { "id": "C08.1", "titulo": "C08.1 - Utilizo vários bancos" },
                        { "id": "C08.2", "titulo": "C08.2 - Utilizo apenas um banco" },
                        { "id": "C08.3", "titulo": "C08.3 - Uso os canais eletrônicos" },
                        { "id": "C08.4", "titulo": "C08.4 - Não uso porque considero os serviços/produtos/taxas insatisfatórios", regras: "PULAR:C10;" },
                        { "id": "C08.8", "titulo": "C08.8 - Não sabe/não quis responder" }
                    ]
                },
                {
                    "id": "C09",
                    "titulo": "C09 - Qual o serviço é mais importante para a escolha do seu banco?",
                    "opcoes": [
                        { "id": "C09.01", "titulo": "C09.01 - Cartão de Crédito" },
                        { "id": "C09.02", "titulo": "C09.02 - Financiamento/Empréstimo" },
                        { "id": "C09.03", "titulo": "C09.03 - Investimento" },
                        { "id": "C09.04", "titulo": "C09.04 - Recebimento de contas" },
                        { "id": "C09.05", "titulo": "C09.05 - Seguro" },
                        { "id": "C09.06", "titulo": "C09.06 - Previdência" },
                        { "id": "C09.07", "titulo": "C09.07 - Canais de atendimento" },
                        { "id": "C09.08", "titulo": "C09.08 - Recebimento de salário" },
                        { "id": "C09.09", "titulo": "C09.09 - Outros" },
                        { "id": "C09.88", "titulo": "C09.88 - Não sabe/não quis responder" }
                    ]
                },
                {
                    "id": "C10",
                    "titulo": "C10 - Cite os quatro primeiros bancos que recordar",                    
                    items: [
                        {
                            "id": "C10.1",
                            "titulo": "C10.1 - Cite o primeiro banco que recordar",
                            "opcoes": [
                                { "id": "C10.1", "titulo": "C10.1 - Bradesco" },
                                { "id": "C10.2", "titulo": "C10.2 - Banco Regional de Brasília - BRB" },
                                { "id": "C10.3", "titulo": "C10.3 - Banco do Brasil - BB" },
                                { "id": "C10.4", "titulo": "C10.4 - Caixa Econômica Federal" },
                                { "id": "C10.5", "titulo": "C10.5 - Itaú" },
                                { "id": "C10.6", "titulo": "C10.6 - Safra" },
                                { "id": "C10.7", "titulo": "C10.7 - Santander" },
                                { "id": "C10.8", "titulo": "C10.8 - Outros" },
                                { "id": "C10.9", "titulo": "C10.9 - Não sabe/não quis responder", regras: "PULAR:D01;" }
                            ]
                        },
                        {
                            "id": "C10.2",
                            "titulo": "C10.2 - Cite o segundo banco que recordar",
                            "opcoes": [
                                { "id": "C10.1", "titulo": "C10.1 - Bradesco" },
                                { "id": "C10.2", "titulo": "C10.2 - Banco Regional de Brasília - BRB" },
                                { "id": "C10.3", "titulo": "C10.3 - Banco do Brasil - BB" },
                                { "id": "C10.4", "titulo": "C10.4 - Caixa Econômica Federal" },
                                { "id": "C10.5", "titulo": "C10.5 - Itaú" },
                                { "id": "C10.6", "titulo": "C10.6 - Safra" },
                                { "id": "C10.7", "titulo": "C10.7 - Santander" },
                                { "id": "C10.8", "titulo": "C10.8 - Outros" },
                                { "id": "C10.9", "titulo": "C10.9 - Não sabe/não quis responder", regras: "PULAR:D01;" }
                            ]
                        },
                        {
                            "id": "C10.3",
                            "titulo": "C10.3 - Cite o terceiro banco que recordar",
                            "opcoes": [
                                { "id": "C10.1", "titulo": "C10.1 - Bradesco" },
                                { "id": "C10.2", "titulo": "C10.2 - Banco Regional de Brasília - BRB" },
                                { "id": "C10.3", "titulo": "C10.3 - Banco do Brasil - BB" },
                                { "id": "C10.4", "titulo": "C10.4 - Caixa Econômica Federal" },
                                { "id": "C10.5", "titulo": "C10.5 - Itaú" },
                                { "id": "C10.6", "titulo": "C10.6 - Safra" },
                                { "id": "C10.7", "titulo": "C10.7 - Santander" },
                                { "id": "C10.8", "titulo": "C10.8 - Outros" },
                                { "id": "C10.9", "titulo": "C10.9 - Não sabe/não quis responder", regras: "PULAR:D01;" }
                            ]
                        },
                        {
                            "id": "C10.4",
                            "titulo": "C10.4 - Cite o quarto banco que recordar",
                            "opcoes": [
                                { "id": "C10.1", "titulo": "C10.1 - Bradesco" },
                                { "id": "C10.2", "titulo": "C10.2 - Banco Regional de Brasília - BRB" },
                                { "id": "C10.3", "titulo": "C10.3 - Banco do Brasil - BB" },
                                { "id": "C10.4", "titulo": "C10.4 - Caixa Econômica Federal" },
                                { "id": "C10.5", "titulo": "C10.5 - Itaú" },
                                { "id": "C10.6", "titulo": "C10.6 - Safra" },
                                { "id": "C10.7", "titulo": "C10.7 - Santander" },
                                { "id": "C10.8", "titulo": "C10.8 - Outros" },
                                { "id": "C10.9", "titulo": "C10.9 - Não sabe/não quis responder", regras: "PULAR:D01;" }
                            ]
                        },
                    ]
                },
               
            ]
        },
        {
            id: "membros",
            titulo: "",
            tipo: "repeticao",
            quantidade: "VALOR:A01.nPessoas",
            items: [
                {
                    id: "BlocoD",
                    titulo: "Bloco D - Características Gerais e de Migração dos Moradores",
                    items: [
                        {
                            id: "D01",
                            titulo: "D01 - Informações do morador",
                            campos: [
                                { id: "D01.nome", titulo: "Nome", descricao: "As próximas perguntas serão referentes ao morador informado." }
                            ]
                        },
                        {
                            "id": "D02",
                            "titulo": "D02 - Qual a condição do morador no domicílio?",
                            "opcoes": [
                                { "id": "D02.01", "titulo": "D02.01 - Pessoa responsável pelo domicílio" },
                                { "id": "D02.02", "titulo": "D02.02 - Cônjuge ou companheiro(a) de sexo diferente" },
                                { "id": "D02.03", "titulo": "D02.03 - Cônjuge ou companheiro(a) do mesmo sexo" },
                                { "id": "D02.04", "titulo": "D02.04 - Filho(a)" },
                                { "id": "D02.05", "titulo": "D02.05 - Enteado" },
                                { "id": "D02.06", "titulo": "D02.06 - Outro parente" },
                                { "id": "D02.07", "titulo": "D02.07 - Agregado(a) (Não é parente da pessoa de referência da família ou do cônjuge e não paga hospedagem nem alimentação)" },
                                { "id": "D02.08", "titulo": "D02.08 - Pensionista (Não é parente da pessoa de referência da família ou do cônjuge e paga hospedagem) e/ou Alimentação" },
                                { "id": "D02.09", "titulo": "D02.09 - Empregado(a) doméstico(a)" },
                                { "id": "D02.10", "titulo": "D02.10 - Outros" }
                            ]
                        },
                        
                        {
                            "id": "D03",
                            "titulo": "D03 - Sexo",
                            "opcoes": [
                                { "id": "D03.1", "titulo": "D03.1 - Masculino" },
                                { "id": "D03.2", "titulo": "D03.2 - Feminino" }
                            ]
                        },
                        {
                            "id": "D04",
                            "titulo": "D04 - Cor ou Raça",
                            "opcoes": [
                                { "id": "D04.1", "titulo": "D04.1 - Branca" },
                                { "id": "D04.2", "titulo": "D04.2 - Preta" },
                                { "id": "D04.3", "titulo": "D04.3 - Amarela" },
                                { "id": "D04.4", "titulo": "D04.4 - Parda" },
                                { "id": "D04.5", "titulo": "D04.5 - Indígena" },
                                { "id": "D04.8", "titulo": "D04.8 - Não sabe/não quis responder" }
                            ]
                        },
                        {
                            "id": "D05",
                            "titulo": "D05 - Idade",
                            "opcoes": [
                                { "id": "D05.1", "titulo": "D05.1 - Anos completos", campo: { tipo: "numerico", titulo: "Anos" } },
                                { "id": "D05.000", "titulo": "D05.000 - Menor de 1 ano" },
                            ]
                        },
                        {
                            "id": "D06",
                            "titulo": "D06 - Responsabilidade compartilhada",
                            regras_exibicao: "VALOR:D05 < 14;",
                            "opcoes": [
                                { "id": "D06.0", "titulo": "D06.0 - Não" },
                                { "id": "D06.1", "titulo": "D06.1 - Sim" }
                            ]
                        },
                        {
                            "id": "D07",
                            "titulo": "D07 - Qual o seu Estado Civil?",
                            regras_exibicao: "VALOR:D05 >= 14;",
                            "opcoes": [
                                { "id": "D07.1", "titulo": "D07.1 - Solteiro" },
                                { "id": "D07.2", "titulo": "D07.2 - Casado Civil" },
                                { "id": "D07.3", "titulo": "D07.3 – Casado Religioso" },
                                { "id": "D07.4", "titulo": "D07.4 – Civil e Religioso" },
                                { "id": "D07.5", "titulo": "D07.5 - Divorciado" },
                                { "id": "D07.6", "titulo": "D07.6 - Separado" },
                                { "id": "D07.7", "titulo": "D07.7 - União estável" },
                                { "id": "D07.8", "titulo": "D07.8 - Viúvo" },
                            ]
                        },
                        {
                            "id": "D08",
                            "titulo": "D08 - Qual a Religião?",
                            "opcoes": [
                                { "id": "D08.0", "titulo": "D08.0 - Não tem religião", regras: "PULAR:D10;" },
                                { "id": "D08.1", "titulo": "D08.1 - Católica" },
                                { "id": "D08.2", "titulo": "D08.2 - Evangélica tradicional" },
                                { "id": "D08.3", "titulo": "D08.3 - Evangélica pentecostal" },
                                { "id": "D08.4", "titulo": "D08.4 - Espírita" },
                                { "id": "D08.5", "titulo": "D08.5 - Oriental" },
                                { "id": "D08.6", "titulo": "D08.6 - Origem Afro" },
                                { "id": "D08.7", "titulo": "D08.7 - Outras" },
                                { "id": "D08.8", "titulo": "D08.8 - Não sabe/ não quis responder", regras: "PULAR:D10;" }
                            ]
                        },
                        {
                            "id": "D09",
                            "titulo": "D09 - Frequência Religiosa",
                            "opcoes": [
                                { "id": "D09.0", "titulo": "D09.0 - Não frequenta" },
                                { "id": "D09.1", "titulo": "D09.1 - Praticante regular" },
                                { "id": "D09.2", "titulo": "D09.2 - Praticante eventual" },
                                { "id": "D09.8", "titulo": "D09.8 - Não sabe/não quis responder" }
                            ]
                        },
                        {
                            "id": "D10",
                            "titulo": "D10 - Qual a sua naturalidade? (Unidade da Federação onde nasceu)",
                            "opcoes": [
                                { "id": "D10.01", "titulo": "D10.01 - Distrito Federal" },
                                { "id": "D10.02", "titulo": "D10.02 - Acre", regras: "PULAR:D12;" },
                                { "id": "D10.03", "titulo": "D10.03 - Alagoas", regras: "PULAR:D12;" },
                                { "id": "D10.04", "titulo": "D10.04 - Amapá", regras: "PULAR:D12;" },
                                { "id": "D10.05", "titulo": "D10.05 - Amazonas", regras: "PULAR:D12;" },
                                { "id": "D10.06", "titulo": "D10.06 - Bahia", regras: "PULAR:D12;" },
                                { "id": "D10.07", "titulo": "D10.07 - Ceará", regras: "PULAR:D12;" },
                                { "id": "D10.08", "titulo": "D10.08 - Espírito Santo", regras: "PULAR:D12;" },
                                { "id": "D10.09", "titulo": "D10.09 - Goiás", regras: "PULAR:D15;"},
                                { "id": "D10.10", "titulo": "D10.10 - Maranhão", regras: "PULAR:D12;" },
                                { "id": "D10.11", "titulo": "D10.11 - Mato Grosso", regras: "PULAR:D12;" },
                                { "id": "D10.12", "titulo": "D10.12 - Mato Grosso do Sul", regras: "PULAR:D12;" },
                                { "id": "D10.13", "titulo": "D10.13 - Minas Gerais", regras: "PULAR:D12;" },
                                { "id": "D10.14", "titulo": "D10.14 - Pará", regras: "PULAR:D12;" },
                                { "id": "D10.15", "titulo": "D10.15 - Paraíba", regras: "PULAR:D12;" },
                                { "id": "D10.16", "titulo": "D10.16 - Paraná", regras: "PULAR:D12;" },
                                { "id": "D10.17", "titulo": "D10.17 - Pernambuco", regras: "PULAR:D12;" },
                                { "id": "D10.18", "titulo": "D10.18 - Piauí", regras: "PULAR:D12;" },
                                { "id": "D10.19", "titulo": "D10.19 - Rio de Janeiro", regras: "PULAR:D12;" },
                                { "id": "D10.20", "titulo": "D10.20 - Rio Grande do Norte", regras: "PULAR:D12;" },
                                { "id": "D10.21", "titulo": "D10.21 - Rio Grande do Sul", regras: "PULAR:D12;" },
                                { "id": "D10.22", "titulo": "D10.22 - Rondônia", regras: "PULAR:D12;" },
                                { "id": "D10.23", "titulo": "D10.23 - Roraima", regras: "PULAR:D12;" },
                                { "id": "D10.24", "titulo": "D10.24 - Santa Catarina", regras: "PULAR:D12;" },
                                { "id": "D10.25", "titulo": "D10.25 - São Paulo", regras: "PULAR:D12;" },
                                { "id": "D10.26", "titulo": "D10.26 - Sergipe", regras: "PULAR:D12;" },
                                { "id": "D10.27", "titulo": "D10.27 - Tocantins", regras: "PULAR:D12;" },
                                { "id": "D10.28", "titulo": "D10.28 - Exterior", regras: "PULAR:D12;" },
                                { "id": "D10.88", "titulo": "D10.88 - Não sabe/Não quis informar", regras: "PULAR:D12;" }
                            ]
                        },
                        {
                            "id": "D11",
                            "titulo": "D11 - Para os nascidos no DF, onde a família morava na época do nascimento?",
                            "opcoes": [
                                { "id": "D11.1", "titulo": "D11.1 - No DF" },
                                { "id": "D11.2", "titulo": "D11.2 - No município" },
                                { "id": "D11.3", "titulo": "D11.3 - Outro município da PMB" },
                                { "id": "D11.4", "titulo": "D11.4 - Em outro local" },
                                { "id": "D11.8", "titulo": "D11.8 - Não sabe/Não quis responder" },
                                { "id": "D11.9", "titulo": "D11.9 - Nascidos fora do DF" }
                            ]
                        },
                        {
                            "id": "D12",
                            "titulo": "D12 - Em que ano chegou ao município?",
                            "opcoes": [
                                { "id": "D12.1", "titulo": "D12.1 - Informar ano de chegada", campo: { tipo: "numerico", titulo: "Ano" } },
                                { "id": "D12.88", "titulo": "D12.88 - Não sabe" }
                            ]
                        },
                        {
                            "id": "D13",
                            "titulo": "D13 – De onde veio para o município? (Unidades da Federação)",
                            "opcoes": [
                                { "id": "D13.01", "titulo": "D13.01 - Distrito Federal" },
                                { "id": "D13.02", "titulo": "D13.02 - Acre" },
                                { "id": "D13.03", "titulo": "D13.03 - Alagoas" },
                                { "id": "D13.04", "titulo": "D13.04 - Amapá" },
                                { "id": "D13.05", "titulo": "D13.05 - Amazonas" },
                                { "id": "D13.06", "titulo": "D13.06 - Bahia" },
                                { "id": "D13.07", "titulo": "D13.07 - Ceará" },
                                { "id": "D13.08", "titulo": "D13.08 - Espírito Santo" },
                                { "id": "D13.09", "titulo": "D13.09 - Goiás" },
                                { "id": "D13.10", "titulo": "D13.10 - Maranhão" },
                                { "id": "D13.11", "titulo": "D13.11 - Mato Grosso" },
                                { "id": "D13.12", "titulo": "D13.12 - Mato Grosso do Sul" },
                                { "id": "D13.13", "titulo": "D13.13 - Minas Gerais" },
                                { "id": "D13.14", "titulo": "D13.14 - Pará" },
                                { "id": "D13.15", "titulo": "D13.15 - Paraíba" },
                                { "id": "D13.16", "titulo": "D13.16 - Paraná" },
                                { "id": "D13.17", "titulo": "D13.17 - Pernambuco" },
                                { "id": "D13.18", "titulo": "D13.18 - Piauí" },
                                { "id": "D13.19", "titulo": "D13.19 - Rio de Janeiro" },
                                { "id": "D13.20", "titulo": "D13.20 - Rio Grande do Norte" },
                                { "id": "D13.21", "titulo": "D13.21 - Rio Grande do Sul" },
                                { "id": "D13.22", "titulo": "D13.22 - Rondônia" },
                                { "id": "D13.23", "titulo": "D13.23 - Roraima" },
                                { "id": "D13.24", "titulo": "D13.24 - Santa Catarina" },
                                { "id": "D13.25", "titulo": "D13.25 - São Paulo" },
                                { "id": "D13.26", "titulo": "D13.26 - Sergipe" },
                                { "id": "D13.27", "titulo": "D13.27 - Tocantins" },
                                { "id": "D13.28", "titulo": "D13.28 - Exterior" },
                                { "id": "D13.88", "titulo": "D13.88 - Não sabe/Não quis informar" },
                                { "id": "D13.99", "titulo": "D13.99 - Nascidos no município" }
                            ]
                        },
                        {
                            "id": "D14",
                            "titulo": "D14 - Por que veio?",
                            "opcoes": [
                                { "id": "D14.01", "titulo": "D14.01 - Acompanhar Parentes/Reunião Familiar" },
                                { "id": "D14.02", "titulo": "D14.02 - Estudo e ou escola" },
                                { "id": "D14.03", "titulo": "D14.03 - Aquisição moradia" },
                                { "id": "D14.04", "titulo": "D14.04 - Programa de Governo para Moradia" },
                                { "id": "D14.05", "titulo": "D14.05 - Transferência de trabalho" },
                                { "id": "D14.06", "titulo": "D14.06 - Procura de Trabalho" },
                                { "id": "D14.07", "titulo": "D14.07 - Melhor acesso aos serviços de saúde" },
                                { "id": "D14.08", "titulo": "D14.08 - Mudança de estado civil" },
                                { "id": "D14.09", "titulo": "D14.09 - Outros Motivos" },
                                { "id": "D14.88", "titulo": "D14.88 - Não Sabe" },
                                { "id": "D14.99", "titulo": "D14.99 - Nascidos no município" }
                            ]
                        },
                        {
                            "id": "D15",
                            "titulo": "D15 - Há quanto tempo mora initerruptamente no município?",
                            "opcoes": [
                                { "id": "D15.1", "titulo": "D15.1 - ____ Ano(s)", campo: { tipo: "numerico", titulo: "Anos" } },
                                { "id": "D15.88", "titulo": "D15.88 - Não sabe/não quis responder" }
                            ]
                        },
                        {
                            "id": "D16",
                            "titulo": "D16 - Acesso à Internet (Predominante)",
                            "opcoes": [
                                { "id": "D16.0", "titulo": "D16.0 - Não acessa" },
                                { "id": "D16.1", "titulo": "D16.1 - Computador de casa" },
                                { "id": "D16.2", "titulo": "D16.2 - Computador do trabalho" },
                                { "id": "D16.3", "titulo": "D16.3 - Celular" },
                                { "id": "D16.4", "titulo": "D16.4 - Tablet" },
                                { "id": "D16.5", "titulo": "D16.5 - Lan House" },
                                { "id": "D16.8", "titulo": "D16.8 - Não sabe/não quis responder" }
                            ]
                        },
                        {
                            "id": "D17",
                            "titulo": "D17 - O Sr(a). tem plano de saúde?",
                            "opcoes": [
                                { "id": "D17.0", "titulo": "D17.0 - Não possui" },
                                { "id": "D17.1", "titulo": "D17.1 - Empresarial" },
                                { "id": "D17.2", "titulo": "D17.2 - Particular" },
                                { "id": "D17.8", "titulo": "D17.8 - Não sabe/não quis responder" }
                            ]
                        },
                        {
                            "id": "D18",
                            "titulo": "D18 - Utiliza hospital público?",
                            "opcoes": [
                                { "id": "D18.00", "titulo": "D18.00 - Não utiliza" },
                                { "id": "D18.01", "titulo": "D18.01 - Plano Piloto" },
                                { "id": "D18.02", "titulo": "D18.02 - Gama" },
                                { "id": "D18.03", "titulo": "D18.03 - Taguatinga" },
                                { "id": "D18.04", "titulo": "D18.04 - Brazlândia" },
                                { "id": "D18.05", "titulo": "D18.05 - Sobradinho" },
                                { "id": "D18.06", "titulo": "D18.06 - Planaltina" },
                                { "id": "D18.07", "titulo": "D18.07 - Paranoá" },
                                { "id": "D18.08", "titulo": "D18.08 - Núcleo Bandeirante" },
                                { "id": "D18.09", "titulo": "D18.09 - Ceilândia" },
                                { "id": "D18.10", "titulo": "D18.10 - Guará" },
                                { "id": "D18.11", "titulo": "D18.11 - Cruzeiro" },
                                { "id": "D18.12", "titulo": "D18.12 - Samambaia" },
                                { "id": "D18.13", "titulo": "D18.13 - Santa Maria" },
                                { "id": "D18.14", "titulo": "D18.14 - São Sebastião" },
                                { "id": "D18.15", "titulo": "D18.15 - Recanto das Emas" },
                                { "id": "D18.16", "titulo": "D18.16 - Lago Sul" },
                                { "id": "D18.17", "titulo": "D18.17 - Riacho Fundo" },
                                { "id": "D18.18", "titulo": "D18.18 - Lago Norte" },
                                { "id": "D18.19", "titulo": "D18.19 - Candangolândia" },
                                { "id": "D18.20", "titulo": "D18.20 - Águas Claras" },
                                { "id": "D18.21", "titulo": "D18.21 - Riacho Fundo II" },
                                { "id": "D18.22", "titulo": "D18.22 - Sudoeste/Octogonal" },
                                { "id": "D18.23", "titulo": "D18.23 - Varjão" },
                                { "id": "D18.24", "titulo": "D18.24 - Park Way" },
                                { "id": "D18.25", "titulo": "D18.25 - SCIA-Estrutural" },
                                { "id": "D18.26", "titulo": "D18.26 - Sobradinho II" },
                                { "id": "D18.27", "titulo": "D18.27 - Jardim Botânico" },
                                { "id": "D18.28", "titulo": "D18.28 - Itapoã" },
                                { "id": "D18.29", "titulo": "D18.29 - SIA" },
                                { "id": "D18.30", "titulo": "D18.30 - Vicente Pires" },
                                { "id": "D18.31", "titulo": "D18.31 - Fercal" },
                                { "id": "D18.32", "titulo": "D18.32 - Vários locais do DF" },
                                { "id": "D18.41", "titulo": "D18.41 - Aguas Lindas de Goiás" },
                                { "id": "D18.42", "titulo": "D18.42 - Alexânia" },
                                { "id": "D18.43", "titulo": "D18.43 - Cidade Ocidental (Sede e ABC)" },
                                { "id": "D18.44", "titulo": "D18.44 - Cristalina (Sede, Campos Lindos/ Marajó)" },
                                { "id": "D18.45", "titulo": "D18.45 - Cocalzinho de Goiás (Sede, Girassol/Edilândia)" },
                                { "id": "D18.46", "titulo": "D18.46 - Formosa" },
                                { "id": "D18.47", "titulo": "D18.47 - Luziânia (Sede e Distritos)" },
                                { "id": "D18.48", "titulo": "D18.48 - Novo Gama" },
                                { "id": "D18.49", "titulo": "D18.49 - Padre Bernardo (Sede, Monte Alto)" },
                                { "id": "D18.50", "titulo": "D18.50 - Planaltina" },
                                { "id": "D18.51", "titulo": "D18.51 - Santo Antônio do Descoberto" },
                                { "id": "D18.52", "titulo": "D18.52 - Valparaíso de Goiás" },
                                { "id": "D18.53", "titulo": "D18.53 - Outros municípios da RIDE" },
                                { "id": "D18.54", "titulo": "D18.54 - Anápolis" },
                                { "id": "D18.55", "titulo": "D18.55 - Goiânia" },
                                { "id": "D18.56", "titulo": "D18.56 - Outros locais" },
                                { "id": "D18.88", "titulo": "D18.88 - Não sabe/não quis responder" }
                            ]
                        },
                        {
                            "id": "D19",
                            "titulo": "D19 - Utiliza posto de saúde?",
                            "opcoes": [
                                { "id": "D19.00", "titulo": "D19.00 - Não utiliza" },
                                { "id": "D19.01", "titulo": "D19.01 - Plano Piloto" },
                                { "id": "D19.02", "titulo": "D19.02 - Gama" },
                                { "id": "D19.03", "titulo": "D19.03 - Taguatinga" },
                                { "id": "D19.04", "titulo": "D19.04 - Brazlândia" },
                                { "id": "D19.05", "titulo": "D19.05 - Sobradinho" },
                                { "id": "D19.06", "titulo": "D19.06 - Planaltina" },
                                { "id": "D19.07", "titulo": "D19.07 - Paranoá" },
                                { "id": "D19.08", "titulo": "D19.08 - Núcleo Bandeirante" },
                                { "id": "D19.09", "titulo": "D19.09 - Ceilândia" },
                                { "id": "D19.10", "titulo": "D19.10 - Guará" },
                                { "id": "D19.11", "titulo": "D19.11 - Cruzeiro" },
                                { "id": "D19.12", "titulo": "D19.12 - Samambaia" },
                                { "id": "D19.13", "titulo": "D19.13 - Santa Maria" },
                                { "id": "D19.14", "titulo": "D19.14 - São Sebastião" },
                                { "id": "D19.15", "titulo": "D19.15 - Recanto das Emas" },
                                { "id": "D19.16", "titulo": "D19.16 - Lago Sul" },
                                { "id": "D19.17", "titulo": "D19.17 - Riacho Fundo" },
                                { "id": "D19.18", "titulo": "D19.18 - Lago Norte" },
                                { "id": "D19.19", "titulo": "D19.19 - Candangolândia" },
                                { "id": "D19.20", "titulo": "D19.20 - Águas Claras" },
                                { "id": "D19.21", "titulo": "D19.21 - Riacho Fundo II" },
                                { "id": "D19.22", "titulo": "D19.22 - Sudoeste/Octogonal" },
                                { "id": "D19.23", "titulo": "D19.23 - Varjão" },
                                { "id": "D19.24", "titulo": "D19.24 - Park Way" },
                                { "id": "D19.25", "titulo": "D19.25 - SCIA-Estrutural" },
                                { "id": "D19.26", "titulo": "D19.26 - Sobradinho II" },
                                { "id": "D19.27", "titulo": "D19.27 - Jardim Botânico" },
                                { "id": "D19.28", "titulo": "D19.28 - Itapoã" },
                                { "id": "D19.29", "titulo": "D19.29 - SIA" },
                                { "id": "D19.30", "titulo": "D19.30 - Vicente Pires" },
                                { "id": "D19.31", "titulo": "D19.31 - Fercal" },
                                { "id": "D19.32", "titulo": "D19.32 - Vários locais do DF" },
                                { "id": "D19.41", "titulo": "D19.41 - Aguas Lindas de Goiás" },
                                { "id": "D19.42", "titulo": "D19.42 - Alexânia" },
                                { "id": "D19.43", "titulo": "D19.43 - Cidade Ocidental (Sede e ABC)" },
                                { "id": "D19.44", "titulo": "D19.44 - Cristalina (Sede, Campos Lindos/ Marajó)" },
                                { "id": "D19.45", "titulo": "D19.45 - Cocalzinho de Goiás (Sede, Girassol/Edilândia)" },
                                { "id": "D19.46", "titulo": "D19.46 - Formosa" },
                                { "id": "D19.47", "titulo": "D19.47 - Luziânia (Sede e Distritos)" },
                                { "id": "D19.48", "titulo": "D19.48 - Novo Gama" },
                                { "id": "D19.49", "titulo": "D19.49 - Padre Bernardo (Sede, Monte Alto)" },
                                { "id": "D19.50", "titulo": "D19.50 - Planaltina" },
                                { "id": "D19.51", "titulo": "D19.51 - Santo Antônio do Descoberto" },
                                { "id": "D19.52", "titulo": "D19.52 - Valparaíso de Goiás" },
                                { "id": "D19.53", "titulo": "D19.53 - Outros municípios da RIDE" },
                                { "id": "D19.54", "titulo": "D19.54 - Anápolis" },
                                { "id": "D19.55", "titulo": "D19.55 - Goiânia" },
                                { "id": "D19.56", "titulo": "D19.56 - Outros locais" },
                                { "id": "D19.88", "titulo": "D19.88 - Não sabe/não quis responder" }
                            ]
                        },
                        {
                            "id": "D20",
                            "titulo": "D20 - Qual o tipo violência mais recente que sofreu nos últimos 12 meses",
                            regras_exibicao: "VALOR:D05 >= 16;",
                            "opcoes": [
                                { "id": "D20.0", "titulo": "D20.0 - Não sofreu", regras: "PULAR:E01;" },
                                { "id": "D20.1", "titulo": "D20.1 - Roubo de carros" },
                                { "id": "D20.2", "titulo": "D20.2 - Furto de carros" },
                                { "id": "D20.3", "titulo": "D20.3 - Furto de dentro do carro" },
                                { "id": "D20.4", "titulo": "D20.4 - Dano/vandalismo de carros" },
                                { "id": "D20.5", "titulo": "D20.5 - Roubo de motocicletas/lambretas" },
                                { "id": "D20.6", "titulo": "D20.6 - Furto de motocicletas/lambretas" },
                                { "id": "D20.7", "titulo": "D20.7 - Roubo de bicicletas" },
                                { "id": "D20.8", "titulo": "D20.8 - Furto de bicicleta" },
                                { "id": "D20.9", "titulo": "D20.9 - Arrombamento" },
                                { "id": "D20.10", "titulo": "D20.10 - Tentativa de arrombamento" },
                                { "id": "D20.11", "titulo": "D20.11 - Roubo de outros bens" },
                                { "id": "D20.12", "titulo": "D20.12 - Furto pessoais" },
                                { "id": "D20.13", "titulo": "D20.13 - Ofensa sexual" },
                                { "id": "D20.14", "titulo": "D20.14 - Agressão física/ameaças" },
                                { "id": "D20.88", "titulo": "D20.88 - Não sabe/não lembra" },
                            ]
                        },
                        {
                            "id": "D21",
                            "titulo": "D21 - Local da violência?",
                            regras_exibicao: "VALOR:D05 >= 16;",
                            "opcoes": [
                                { "id": "D21.1", "titulo": "D21.1 - Na sua casa" },
                                { "id": "D21.2", "titulo": "D21.2 - Na casa de algum parente ou amigo" },
                                { "id": "D21.3", "titulo": "D21.3 - Andando na rua" },
                                { "id": "D21.4", "titulo": "D21.4 - No local de trabalho" },
                                { "id": "D21.5", "titulo": "D21.5 - Meios de transporte (ônibus, metrô, trem, táxi, lotação, carro, etc.)" },
                                { "id": "D21.6", "titulo": "D21.6 - Locais públicos internos (banco, escola, shopping, restaurantes, bar, loja, etc)" },
                                { "id": "D21.7", "titulo": "D21.7 - Locais públicos externos (praça, parque, jardim, etc)" },
                                { "id": "D21.8", "titulo": "D21.8 - Não Sabe/não lembra" },
                            ]
                        },
                        {
                            "id": "D22",
                            "titulo": "D22 - Registrou queixa do ocorrido?",
                            regras_exibicao: "VALOR:D05 >= 16;",
                            "opcoes": [
                                { "id": "D22.1", "titulo": "D22.1 - Não denunciou" },
                                { "id": "D22.2", "titulo": "D22.2 - Sim na Polícia Militar" },
                                { "id": "D22.3", "titulo": "D22.3 - Sim na Polícia Civil" },
                                { "id": "D22.4", "titulo": "D22.4 - Sim na Polícia Rodoviária Federal" },
                                { "id": "D22.5", "titulo": "D22.5 - Sim outra" },
                                { "id": "D22.8", "titulo": "D22.8 - Não Sabe/não lembra" },
                            ]
                        }
                    ]
                },
                {
                    id: "BlocoE",
                    titulo: "Bloco E - CARACTERÍSTICAS DE EDUCAÇÃO/ TRABALHO E RENDIMENTOS DOS MORADORES",
                    items: [
                        {
                            "id": "E01",
                            "titulo": "E01 - Frequenta escola ou creche regular?",
                            "opcoes": [
                                { "id": "E01.0", "titulo": "E01.0 - Não", regras: "PULAR:E03;" },
                                { "id": "E01.1", "titulo": "E01.1 - Escola pública" },
                                { "id": "E01.2", "titulo": "E01.2 - Escola particular" },
                                { "id": "E01.3", "titulo": "E01.3 - A distância pública", regras: "PULAR:E02;" },
                                { "id": "E01.4", "titulo": "E01.4 - A distância particular", regras: "PULAR:E02;" }
                            ]
                        },
                        {
                            "id": "E02",
                            "titulo": "E02 - Local onde estuda?",
                            "opcoes": [
                                { "id": "E02.01", "titulo": "E02.01 - Plano Piloto" },
                                { "id": "E02.02", "titulo": "E02.02 - Gama" },
                                { "id": "E02.03", "titulo": "E02.03 - Taguatinga" },
                                { "id": "E02.04", "titulo": "E02.04 - Brazlândia" },
                                { "id": "E02.05", "titulo": "E02.05 - Sobradinho" },
                                { "id": "E02.06", "titulo": "E02.06 - Planaltina" },
                                { "id": "E02.07", "titulo": "E02.07 - Paranoá" },
                                { "id": "E02.08", "titulo": "E02.08 - Núcleo Bandeirante" },
                                { "id": "E02.09", "titulo": "E02.09 - Ceilândia" },
                                { "id": "E02.10", "titulo": "E02.10 - Guará" },
                                { "id": "E02.11", "titulo": "E02.11 - Cruzeiro" },
                                { "id": "E02.12", "titulo": "E02.12 - Samambaia" },
                                { "id": "E02.13", "titulo": "E02.13 - Santa Maria" },
                                { "id": "E02.14", "titulo": "E02.14 - São Sebastião" },
                                { "id": "E02.15", "titulo": "E02.15 - Recanto das Emas" },
                                { "id": "E02.16", "titulo": "E02.16 - Lago Sul" },
                                { "id": "E02.17", "titulo": "E02.17 - Riacho Fundo" },
                                { "id": "E02.18", "titulo": "E02.18 - Lago Norte" },
                                { "id": "E02.19", "titulo": "E02.19 - Candangolândia" },
                                { "id": "E02.20", "titulo": "E02.20 - Águas Claras" },
                                { "id": "E02.21", "titulo": "E02.21 - Riacho Fundo II" },
                                { "id": "E02.22", "titulo": "E02.22 - Sudoeste/Octogonal" },
                                { "id": "E02.23", "titulo": "E02.23 - Varjão" },
                                { "id": "E02.24", "titulo": "E02.24 - Park Way" },
                                { "id": "E02.25", "titulo": "E02.25 - SCIA-Estrutural" },
                                { "id": "E02.26", "titulo": "E02.26 - Sobradinho II" },
                                { "id": "E02.27", "titulo": "E02.27 - Jardim Botânico" },
                                { "id": "E02.28", "titulo": "E02.28 - Itapoã" },
                                { "id": "E02.29", "titulo": "E02.29 - SIA" },
                                { "id": "E02.30", "titulo": "E02.30 - Vicente Pires" },
                                { "id": "E02.31", "titulo": "E02.31 - Fercal" },
                                { "id": "E02.32", "titulo": "E02.32 - Vários locais do DF" },
                                { "id": "E02.41", "titulo": "E02.41 - Aguas Lindas de Goiás" },
                                { "id": "E02.42", "titulo": "E02.42 - Alexânia" },
                                { "id": "E02.43", "titulo": "E02.43 - Cidade Ocidental (Sede e ABC)" },
                                { "id": "E02.44", "titulo": "E02.44 - Cristalina (Sede, Campos Lindos/ Marajó)" },
                                { "id": "E02.45", "titulo": "E02.45 - Cocalzinho de Goiás (Sede, Girassol/Edilândia)" },
                                { "id": "E02.46", "titulo": "E02.46 - Formosa" },
                                { "id": "E02.47", "titulo": "E02.47 - Luziânia (Sede e Distritos)" },
                                { "id": "E02.48", "titulo": "E02.48 - Novo Gama" },
                                { "id": "E02.49", "titulo": "E02.49 - Padre Bernardo (Sede, Monte Alto)" },
                                { "id": "E02.50", "titulo": "E02.50 - Planaltina" },
                                { "id": "E02.51", "titulo": "E02.51 - Santo Antônio do Descoberto" },
                                { "id": "E02.52", "titulo": "E02.52 - Valparaíso de Goiás" },
                                { "id": "E02.53", "titulo": "E02.53 - Outros municípios da RIDE" },
                                { "id": "E02.54", "titulo": "E02.54 - Anápolis" },
                                { "id": "E02.55", "titulo": "E02.55 - Goiânia" },
                                { "id": "E02.56", "titulo": "E02.56 - Outros locais" },
                                { "id": "E02.88", "titulo": "E02.88 - Não sabe/não quis responder"}
                            ]
                        },
                        {
                            "id": "E03",
                            "titulo": "E03 - Qual seu nível de escolaridade?",
                            "opcoes": [
                                { "id": "E03.01", "titulo": "E03.01 - Analfabeto (15 anos e mais)", regras: "PULAR:E05;" },
                                { "id": "E03.02", "titulo": "E03.02 - Sabe ler e escrever (15 anos e mais)", regras: "PULAR:E05;" },
                                { "id": "E03.03", "titulo": "E03.03 - Alfabetização de jovens e adultos (15 anos e mais)", regras: "PULAR:E05;" },
                                { "id": "E03.04", "titulo": "E03.04 - Ensino Especial", regras: "PULAR:E05;" },
                                { "id": "E03.05", "titulo": "E03.05 - Maternal e Creche (0 anos a 3 anos)", regras: "PULAR:E05;" },
                                { "id": "E03.06", "titulo": "E03.06 - Jardim I e II/ pré-escola (entre 4 e 5 anos)", regras: "PULAR:E05;" },
                                { "id": "E03.07", "titulo": "E03.07 - EJA Ensino Fundamental incompleto (15 anos e mais)", regras: "PULAR:E05;" },
                                { "id": "E03.08", "titulo": "E03.08 - EJA Ensino Fundamental completo (17 anos e mais)", regras: "PULAR:E05;" },
                                { "id": "E03.09", "titulo": "E03.09 - EJA Ensino Médio incompleto (18 anos e mais)", regras: "PULAR:E05;" },
                                { "id": "E03.10", "titulo": "E03.10 - EJA Ensino Médio completo (20 anos e mais)", regras: "PULAR:E05;" },
                                { "id": "E03.11", "titulo": "E03.11 - Regular do Ensino fundamental incompleto (6 anos e mais)" },
                                { "id": "E03.12", "titulo": "E03.12 - Regular do Ensino fundamental completo (13 anos e mais)", regras: "PULAR:E05;" },
                                { "id": "E03.13", "titulo": "E03.13 - Regular do Ensino médio incompleto (14 anos e mais)" },
                                { "id": "E03.14", "titulo": "E03.14 - Regular do Ensino médio completo (16 anos e mais)", regras: "PULAR:E05;" },
                                { "id": "E03.15", "titulo": "E03.15 - Superior incompleto (16 anos e mais)" },
                                { "id": "E03.16", "titulo": "E03.16 - Superior completo", regras: "PULAR:E05;" },
                                { "id": "E03.17", "titulo": "E03.17 - Curso de Especialização (21 anos e mais)" },
                                { "id": "E03.18", "titulo": "E03.18 - Mestrado (21 anos e mais)" },
                                { "id": "E03.19", "titulo": "E03.19 - Doutorado (21 anos e mais)" },
                                { "id": "E03.20", "titulo": "E03.20 - Crianças de 6 a 14 anos fora da escola", regras: "PULAR:E05;" },
                                { "id": "E03.88", "titulo": "E03.88 - Não sabe/não quis responder", regras: "PULAR:E05;" },
                                { "id": "E03.99", "titulo": "E03.99 - Menor de 6 anos fora da escola", regras: "FIM_REPETICAO;" }
                            ]
                        },
                        {
                            "id": "E04",
                            "titulo": "E04 - Série/Ano/Semestre concluído?",
                            "opcoes": [
                                { "id": "E04.1", "titulo": "E04.1 - Informar número", campo: { tipo: "numerico", titulo: "Série,Ano/Semestre" } }
                            ]
                        },
                        {
                            "id": "E05",
                            "titulo": "E05 - Atualmente o Sr(a) está fazendo outro curso?",
                            "opcoes": [
                                { "id": "E05.0", "titulo": "E05.0 - Não faz" },
                                { "id": "E05.1", "titulo": "E05.1 - Preparatório para concurso" },
                                { "id": "E05.2", "titulo": "E05.2 - Preparatório para vestibular/Enem" },
                                { "id": "E05.3", "titulo": "E05.3 - Preparatório para concurso e vestibular/Enem" },
                                { "id": "E05.4", "titulo": "E05.4 - Pronatec" },
                                { "id": "E05.5", "titulo": "E05.5 - Línguas" },
                                { "id": "E05.6", "titulo": "E05.6 - Outros" }
                            ]
                        },
                        {
                            "id": "E06",
                            "titulo": "E06 - Qual a sua situação de atividade?",
                            regras_exibicao: "VALOR:D05 >= 10;",
                            "opcoes": [
                                { "id": "E06.0", "titulo": "E06.0 - Não tem atividade", regras: "PULAR:E13;" },
                                { "id": "E06.1", "titulo": "E06.1 - Tem trabalho remunerado (Incluindo estagiários e aprendizes)" },
                                { "id": "E06.2", "titulo": "E06.2 - Aposentado", regras: "PULAR:E13;" },
                                { "id": "E06.3", "titulo": "E06.3 - Aposentado trabalhando" },
                                { "id": "E06.4", "titulo": "E06.4 - Pensionista", regras: "PULAR:E13;" },
                                { "id": "E06.5", "titulo": "E06.5 - Do lar", regras: "PULAR:E13;" },
                                { "id": "E06.6", "titulo": "E06.6 - Desempregado", regras: "PULAR:E13;" },
                                { "id": "E06.7", "titulo": "E06.7 - Estudante", regras: "PULAR:E13;" },
                                { "id": "E06.8", "titulo": "E06.8 - Trabalho voluntário", regras: "PULAR:E09;" },
                            ]
                        },
                        {
                            "id": "E07",
                            "titulo": "E07 - Qual setor da atividade remunerada?",
                            regras_exibicao: "VALOR:D05 >= 10;",
                            "opcoes": [
                                { "id": "E07.01", "titulo": "E07.01 - Agricultura, Pecuária, Produção Florestal, Pesca e Aquicultura" },
                                { "id": "E07.02", "titulo": "E07.02 - Construção" },
                                { "id": "E07.03", "titulo": "E07.03 - Indústria" },
                                { "id": "E07.04", "titulo": "E07.04 - Comércio" },
                                { "id": "E07.05", "titulo": "E07.05 - Empresa Pública Federal" },
                                { "id": "E07.06", "titulo": "E07.06 - Empresa Pública - GDF" },
                                { "id": "E07.07", "titulo": "E07.07 - Administração Pública Federal" },
                                { "id": "E07.08", "titulo": "E07.08 - Administração Pública - GDF" },
                                { "id": "E07.09", "titulo": "E07.09 - Transporte e armazenagem" },
                                { "id": "E07.10", "titulo": "E07.10 - Comunicação e informação" },
                                { "id": "E07.11", "titulo": "E07.11 - Educação" },
                                { "id": "E07.12", "titulo": "E07.12 - Saúde" },
                                { "id": "E07.13", "titulo": "E07.13 - Serviços Domésticos" },
                                { "id": "E07.14", "titulo": "E07.14 - Serviços pessoais" },
                                { "id": "E07.15", "titulo": "E07.15 - Serviços creditícios e financeiros" },
                                { "id": "E07.16", "titulo": "E07.16 - Serviços imobiliários" },
                                { "id": "E07.17", "titulo": "E07.17 - Serviços gerais" },
                                { "id": "E07.18", "titulo": "E07.18 - Administração Pública do município" },
                                { "id": "E07.19", "titulo": "E07.19 - Administração Pública de Goiás" },
                                { "id": "E07.88", "titulo": "E07.88 - Não sabe" },
                            ]
                        },
                        {
                            "id": "E08",
                            "titulo": "E08 - Qual a sua posição de ocupação?",
                            regras_exibicao: "VALOR:D05 >= 10;",
                            "opcoes": [
                                { "id": "E08.01", "titulo": "E08.01 - Empregado com CTPS" },
                                { "id": "E08.02", "titulo": "E08.02 - Empregado sem CTPS" },
                                { "id": "E08.03", "titulo": "E08.03 – Empregado temporário" },
                                { "id": "E08.04", "titulo": "E08.04 – Servidor público/militar" },
                                { "id": "E08.05", "titulo": "E08.05 – Profissional Liberal" },
                                { "id": "E08.06", "titulo": "E08.06 – Microempreendedor individual – MEI (0 ou 1 empregado)" },
                                { "id": "E08.07", "titulo": "E08.07 - Microempresário (até 9 empregados)" },
                                { "id": "E08.08", "titulo": "E08.08 – Pequeno empresário (10 até 49 empregados)" },
                                { "id": "E08.09", "titulo": "E08.09 - Médio empresário (50 até 99 empregados)" },
                                { "id": "E08.10", "titulo": "E08.10 – Grande empresário (100 ou mais empregados)" },
                                { "id": "E08.11", "titulo": "E08.11 – Autônomo" },
                                { "id": "E08.12", "titulo": "E08.12 – Estagiário/Aprendiz" },
                                { "id": "E08.13", "titulo": "E08.13 – Cargo Comissionado" },
                                { "id": "E08.14", "titulo": "E08.14 – Ajuda no negócio da família" },
                                { "id": "E08.88", "titulo": "E08.88 – Não Sabe" },
                            ]
                        },
                        {
                            "id": "E09",
                            "titulo": "E09 – Local onde trabalha?",
                            regras_exibicao: "VALOR:D05 >= 10;",
                            "opcoes": [
                                { "id": "E09.01", "titulo": "E09.01 - Plano Piloto" },
                                { "id": "E09.02", "titulo": "E09.02 - Gama" },
                                { "id": "E09.03", "titulo": "E09.03 - Taguatinga" },
                                { "id": "E09.04", "titulo": "E09.04 - Brazlândia" },
                                { "id": "E09.05", "titulo": "E09.05 - Sobradinho" },
                                { "id": "E09.06", "titulo": "E09.06 - Planaltina" },
                                { "id": "E09.07", "titulo": "E09.07 - Paranoá" },
                                { "id": "E09.08", "titulo": "E09.08 - Núcleo Bandeirante" },
                                { "id": "E09.09", "titulo": "E09.09 - Ceilândia" },
                                { "id": "E09.10", "titulo": "E09.10 - Guará" },
                                { "id": "E09.11", "titulo": "E09.11 - Cruzeiro" },
                                { "id": "E09.12", "titulo": "E09.12 - Samambaia" },
                                { "id": "E09.13", "titulo": "E09.13 - Santa Maria" },
                                { "id": "E09.14", "titulo": "E09.14 - São Sebastião" },
                                { "id": "E09.15", "titulo": "E09.15 - Recanto das Emas" },
                                { "id": "E09.16", "titulo": "E09.16 - Lago Sul" },
                                { "id": "E09.17", "titulo": "E09.17 - Riacho Fundo" },
                                { "id": "E09.18", "titulo": "E09.18 - Lago Norte" },
                                { "id": "E09.19", "titulo": "E09.19 - Candangolândia" },
                                { "id": "E09.20", "titulo": "E09.20 - Águas Claras" },
                                { "id": "E09.21", "titulo": "E09.21 - Riacho Fundo II" },
                                { "id": "E09.22", "titulo": "E09.22 - Sudoeste/Octogonal" },
                                { "id": "E09.23", "titulo": "E09.23 - Varjão" },
                                { "id": "E09.24", "titulo": "E09.24 - Park Way" },
                                { "id": "E09.25", "titulo": "E09.25 - SCIA-Estrutural" },
                                { "id": "E09.26", "titulo": "E09.26 - Sobradinho II" },
                                { "id": "E09.27", "titulo": "E09.27 - Jardim Botânico" },
                                { "id": "E09.28", "titulo": "E09.28 - Itapoã" },
                                { "id": "E09.29", "titulo": "E09.29 - SIA" },
                                { "id": "E09.30", "titulo": "E09.30 - Vicente Pires" },
                                { "id": "E09.31", "titulo": "E09.31 - Fercal" },
                                { "id": "E09.32", "titulo": "E09.32 - Vários locais do DF" },
                                { "id": "E09.41", "titulo": "E09.41 - Aguas Lindas de Goiás" },
                                { "id": "E09.42", "titulo": "E09.42 - Alexânia" },
                                { "id": "E09.43", "titulo": "E09.43 - Cidade Ocidental (sede e ABC)" },
                                { "id": "E09.44", "titulo": "E09.44 - Cristalina (Sede, Campos Lindos/ Marajó)" },
                                { "id": "E09.45", "titulo": "E09.45 - Cocalzinho de Goiás (Sede, Girassol/Edilândia)" },
                                { "id": "E09.46", "titulo": "E09.46 - Formosa" },
                                { "id": "E09.47", "titulo": "E09.47 - Luziânia (Sede e Distritos)" },
                                { "id": "E09.48", "titulo": "E09.48 - Novo Gama" },
                                { "id": "E09.49", "titulo": "E09.49 - Padre Bernardo (Sede, Monte Alto)" },
                                { "id": "E09.50", "titulo": "E09.50 - Planaltina" },
                                { "id": "E09.51", "titulo": "E09.51 - Santo Antônio do Descoberto" },
                                { "id": "E09.52", "titulo": "E09.52 - Valparaíso de Goiás" },
                                { "id": "E09.53", "titulo": "E09.53 - Outros municípios da RIDE" },
                                { "id": "E09.54", "titulo": "E09.54 - Anápolis" },
                                { "id": "E09.55", "titulo": "E09.55 - Goiânia" },
                                { "id": "E09.56", "titulo": "E09.56 - Outros locais" },
                                { "id": "E09.88", "titulo": "E09.88 - Não sabe/não quis responder" },
                            ]
                        },
                        {
                            "id": "E10",
                            "titulo": "E10 - Quanto tempo o Sr(a) gasta de casa até o seu trabalho?",
                            regras_exibicao: "VALOR:D05 >= 10;",
                            "opcoes": [
                                { "id": "E10.1", "titulo": "E10.1 - Até 20 minutos" },
                                { "id": "E10.2", "titulo": "E10.2 - Entre 20 e 40 minutos" },
                                { "id": "E10.3", "titulo": "E10.3 - Entre 40 minutos e 1 hora" },
                                { "id": "E10.4", "titulo": "E10.4 - Entre 1 hora e 1 hora e meia" },
                                { "id": "E10.5", "titulo": "E10.5 - Entre 1 hora e meia e 2 horas" },
                                { "id": "E10.6", "titulo": "E10.6 - De 2 horas a 3 horas" },
                                { "id": "E10.7", "titulo": "E10.7 - Acima de 3 horas" },
                                { "id": "E10.8", "titulo": "E10.8 - Não sabe/não quis responder" },
                            ]
                        },
                        {
                            "id": "E11",
                            "titulo": "E11 - Quais modos de transporte o Sr(a) utliza para ir  para o trabalho?",
                            regras_exibicao: "VALOR:D05 >= 10;",
                            "opcoes": [
                                { "id": "E11.1", "titulo": "E11.1 - Ônibus" },
                                { "id": "E11.2", "titulo": "E11.2 - Mais de um ônibus" },
                                { "id": "E11.3", "titulo": "E11.3 - Automóvel" },
                                { "id": "E11.4", "titulo": "E11.4 - Ônibus e automóvel" },
                                { "id": "E11.5", "titulo": "E11.5 - Ônibus e metrô" },
                                { "id": "E11.6", "titulo": "E11.6 - Automóvel e metrô" },
                                { "id": "E11.7", "titulo": "E11.7 - Utilitário" },
                                { "id": "E11.8", "titulo": "E11.8 - Metrô" },
                                { "id": "E11.9", "titulo": "E11.9 - Motocicleta" },
                                { "id": "E11.10", "titulo": "E11.10 - Bicicleta" },
                                { "id": "E11.11", "titulo": "E11.11 - A pé" },
                                { "id": "E11.12", "titulo": "E11.12 - Outros" },
                            ]
                        },
                        {
                            "id": "E12",
                            "titulo": "E12 - Quanto o Sr(a) recebeu no mês passado do Trabalho Principal (em R$, sem centavos)",
                            regras_exibicao: "VALOR:D05 >= 10;",
                            "opcoes": [
                                { "id": "E12.0", "titulo": "E12.0 - Não teve rendimento no mês de referência" },
                                { "id": "E12.1", "titulo": "E12.1 - R$ ____________,00", campo: { tipo: "moeda" } },
                                { "id": "E12.7", "titulo": "E12.7 - Recusa" },
                                { "id": "E12.8", "titulo": "E12.8 - Não sabe" },
                            ]
                        },
                        {
                            "id": "E13",
                            "titulo": "E13 - Quanto o Sr(a) recebeu no mês passado dos outros Rendimentos (em R$, sem centavos)",
                            regras_exibicao: "VALOR:D05 >= 10;",
                            "opcoes": [
                                { "id": "E13.0", "titulo": "E13.0 - Não teve rendimento no mês de referência" },
                                { "id": "E13.1", "titulo": "E13.1 - R$ ____________,00", campo: { tipo: "moeda" } },
                                { "id": "E13.7", "titulo": "E13.7 - Recusa" },
                                { "id": "E13.8", "titulo": "E13.8 - Não sabe" },
                            ]
                        },
                        {
                            "id": "E14",
                            "titulo": "E14 - O Sr(a) contribui para a Previdência Social Pública (INSS)?",
                            regras_exibicao: "VALOR:D05 >= 10;",
                            "opcoes": [
                                { "id": "E14.1", "titulo": "E14.1 - Trabalha, mas não contribui" },
                                { "id": "E14.2", "titulo": "E14.2 - Pública" },
                                { "id": "E14.3", "titulo": "E14.3 - Privada" },
                                { "id": "E14.4", "titulo": "E14.4 - Pública e privada" },
                                { "id": "E14.8", "titulo": "E14.8 - Não sabe" }
                            ]
                        },
                        {
                            "id": "E15",
                            "titulo": "E15 - Local onde utiliza os serviços bancários?",
                            regras_exibicao: "VALOR:D05 >= 10;",
                            "opcoes": [
                                { "id": "E15.00", "titulo": "E15.00 - Não utiliza serviços bancários" },
                                { "id": "E15.01", "titulo": "E15.01 - Plano Piloto" },
                                { "id": "E15.02", "titulo": "E15.02 - Gama" },
                                { "id": "E15.03", "titulo": "E15.03 - Taguatinga" },
                                { "id": "E15.04", "titulo": "E15.04 - Brazlândia" },
                                { "id": "E15.05", "titulo": "E15.05 - Sobradinho" },
                                { "id": "E15.06", "titulo": "E15.06 - Planaltina" },
                                { "id": "E15.07", "titulo": "E15.07 - Paranoá" },
                                { "id": "E15.08", "titulo": "E15.08 - Núcleo Bandeirante" },
                                { "id": "E15.09", "titulo": "E15.09 - Ceilândia" },
                                { "id": "E15.10", "titulo": "E15.10 - Guará" },
                                { "id": "E15.11", "titulo": "E15.11 - Cruzeiro" },
                                { "id": "E15.12", "titulo": "E15.12 - Samambaia" },
                                { "id": "E15.13", "titulo": "E15.13 - Santa Maria" },
                                { "id": "E15.14", "titulo": "E15.14 - São Sebastião" },
                                { "id": "E15.15", "titulo": "E15.15 - Recanto das Emas" },
                                { "id": "E15.16", "titulo": "E15.16 - Lago Sul" },
                                { "id": "E15.17", "titulo": "E15.17 - Riacho Fundo" },
                                { "id": "E15.18", "titulo": "E15.18 - Lago Norte" },
                                { "id": "E15.19", "titulo": "E15.19 - Candangolândia" },
                                { "id": "E15.20", "titulo": "E15.20 - Águas Claras" },
                                { "id": "E15.21", "titulo": "E15.21 - Riacho Fundo II" },
                                { "id": "E15.22", "titulo": "E15.22 - Sudoeste/Octogonal" },
                                { "id": "E15.23", "titulo": "E15.23 - Varjão" },
                                { "id": "E15.24", "titulo": "E15.24 - Park Way" },
                                { "id": "E15.25", "titulo": "E15.25 - SCIA-Estrutural" },
                                { "id": "E15.26", "titulo": "E15.26 - Sobradinho II" },
                                { "id": "E15.27", "titulo": "E15.27 - Jardim Botânico" },
                                { "id": "E15.28", "titulo": "E15.28 - Itapoã" },
                                { "id": "E15.29", "titulo": "E15.29 - SIA" },
                                { "id": "E15.30", "titulo": "E15.30 - Vicente Pires" },
                                { "id": "E15.31", "titulo": "E15.31 - Fercal" },
                                { "id": "E15.32", "titulo": "E15.32 - Vários locais do DF" },
                                { "id": "E15.41", "titulo": "E15.41 - Aguas Lindas de Goiás" },
                                { "id": "E15.42", "titulo": "E15.42 - Alexânia" },
                                { "id": "E15.43", "titulo": "E15.43 - Cidade Ocidental (Sede e ABC)" },
                                { "id": "E15.44", "titulo": "E15.44 - Cristalina (Sede, Campos Lindos/ Marajó)" },
                                { "id": "E15.45", "titulo": "E15.45 - Cocalzinho de Goiás (Sede, Girassol/Edilândia)" },
                                { "id": "E15.46", "titulo": "E15.46 - Formosa" },
                                { "id": "E15.47", "titulo": "E15.47 - Luziânia (Sede e Distritos)" },
                                { "id": "E15.48", "titulo": "E15.48 - Novo Gama" },
                                { "id": "E15.49", "titulo": "E15.49 - Padre Bernardo (Sede, Monte Alto)" },
                                { "id": "E15.50", "titulo": "E15.50 - Planaltina" },
                                { "id": "E15.51", "titulo": "E15.51 - Santo Antônio do Descoberto" },
                                { "id": "E15.52", "titulo": "E15.52 - Valparaíso de Goiás" },
                                { "id": "E15.53", "titulo": "E15.53 - Outros municípios da RIDE" },
                                { "id": "E15.54", "titulo": "E15.54 - Anápolis" },
                                { "id": "E15.55", "titulo": "E15.55 - Goiânia" },
                                { "id": "E15.56", "titulo": "E15.56 - Outros locais" },
                                { "id": "E15.88", "titulo": "E15.88 - Não sabe/não quis responder" },
                            ]
                        },
                        
                        
                    ]
                }
            ]
        },
        {
            id: "BlocoF",
            titulo: "Bloco F – Fechamento ",
            items: [
                {
                    id: "F01",
                    titulo: "Fechamento",
                    campos: [
                        { id: "F01.nOrdemEntrevistado", titulo: "Quem foi o entrevistado:", tipo: "caixa-selecao" },
                        { id: "F01.telefoneEntrevistado", titulo: "Telefone do entrevistado", tipo: "telefone" },
                        { id: "F01.observacoes", titulo: "Observações referentes à pesquisa", tipo: "texto-longo" }
                    ]
                }
            ]
        }
    ]
}