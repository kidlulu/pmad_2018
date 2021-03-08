use DB_CODEPLAN
go

select * from pmad2018.dp_dom_1718_imput
go

ALTER TABLE pmad2018.dp_dom_1718_imput ADD TOT_DOM bigint NULL ;
GO

update pmad2018.dp_dom_1718_imput
set fator_mun = case when A01setor = 'Águas Lindas de Goiás' then 57.2340647857889
                     when A01setor = 'Alexânia' then 14.262
                     when A01setor = 'Cidade Ocidental: Jardim ABC' then 6.32464929859719
                     when A01setor = 'Cidade Ocidental: Sede' then 23.6761744966443
                     when A01setor = 'Cocalzinho de Goiás: Girassol/Edilândia' then 5.24196597353497
                     when A01setor = 'Cocalzinho de Goiás: Sede' then 4.98954703832753
                     when A01setor = 'Cristalina: Campos Lindos/Marajó' then 4.02204408817635
                     when A01setor = 'Cristalina: Sede' then 18.7153284671533
                     when A01setor = 'Formosa' then 33.3094972067039
                     when A01setor = 'Luziânia: Jardim Ingá' then 40.9678714859438
                     when A01setor = 'Luziânia: Sede' then 41.0243277848912
                     when A01setor = 'Novo Gama' then 36.94
                     when A01setor = 'Padre Bernardo: Monte Alto' then 5.11646586345381
                     when A01setor = 'Padre Bernardo: Sede' then 5.91023339317774
                     when A01setor = 'Planaltina' then 43.0589147286822
                     when A01setor = 'Santo Antônio do Descoberto' then 27.5354938271605
                     when A01setor = 'Valparaíso de Goiás' then 49.1725663716814
		        else null
	            end,
	TOT_DOM = case when A01setor = 'Águas Lindas de Goiás' then 54773
                   when A01setor = 'Alexânia' then 7131
                   when A01setor = 'Cidade Ocidental: Jardim ABC' then 3156
                   when A01setor = 'Cidade Ocidental: Sede' then 14111
                   when A01setor = 'Cocalzinho de Goiás: Girassol/Edilândia' then 2773
                   when A01setor = 'Cocalzinho de Goiás: Sede' then 2864
                   when A01setor = 'Cristalina: Campos Lindos/Marajó' then 2007
                   when A01setor = 'Cristalina: Sede' then 10256
                   when A01setor = 'Formosa' then 29812
                   when A01setor = 'Luziânia: Jardim Ingá' then 20402
                   when A01setor = 'Luziânia: Sede' then 32040
                   when A01setor = 'Novo Gama' then 27705
                   when A01setor = 'Padre Bernardo: Monte Alto' then 2548
                   when A01setor = 'Padre Bernardo: Sede' then 3292
                   when A01setor = 'Planaltina' then 27773
                   when A01setor = 'Santo Antônio do Descoberto' then 17843
                   when A01setor = 'Valparaíso de Goiás' then 44452
              else null
	          end
go