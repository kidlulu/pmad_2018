use DB_CODEPLAN;

SET QUOTED_IDENTIFIER ON;

--IF OBJECT_ID('pmad2018.dp_dom_1718_imput_20210504', 'U') IS NOT NULL DROP TABLE pmad2018.dp_dom_1718_imput_20210504;

--select * into pmad2018.dp_dom_1718_imput_20210504 from pmad2018.dp_dom_1718_imput;

ALTER TABLE pmad2018.dp_dom_1718_imput ALTER COLUMN TOT_DOM FLOAT;  

update pmad2018.dp_dom_1718_imput 
set  fator_mun = case when trim(A01setor) = 'Águas Lindas de Goiás' then 68.011133555442
                      when trim(A01setor) = 'Alexânia' then 13.633877432441
                      when trim(A01setor) = 'Cidade Ocidental: Jardim ABC' then 6.97655929344297
                      when trim(A01setor) = 'Cidade Ocidental: Sede' then 27.4104629887846
                      when trim(A01setor) = 'Cocalzinho de Goiás: Girassol/Edilândia' then 4.88891428880769
                      when trim(A01setor) = 'Cocalzinho de Goiás: Sede' then 4.9773888241169
                      when trim(A01setor) = 'Cristalina: Campos Lindos/Marajó' then 4.50506148433266
                      when trim(A01setor) = 'Cristalina: Sede' then 20.5830944650857
                      when trim(A01setor) = 'Formosa' then 36.3722801843029
                      when trim(A01setor) = 'Luziânia: Jardim Ingá' then 43.97771517594
                      when trim(A01setor) = 'Luziânia: Sede' then 45.511908150469
                      when trim(A01setor) = 'Novo Gama' then 45.6453072113454
                      when trim(A01setor) = 'Padre Bernardo: Monte Alto' then 5.99556810858071
                      when trim(A01setor) = 'Padre Bernardo: Sede' then 7.45569390737057
                      when trim(A01setor) = 'Planaltina' then 38.8530111886967
                      when trim(A01setor) = 'Santo Antônio do Descoberto' then 30.2109629259105
                      when trim(A01setor) = 'Valparaíso de Goiás' then 61.3931121413451
					  end,
     TOT_DOM = case when trim(A01setor) = 'Águas Lindas de Goiás' then 65086.654812558
                      when trim(A01setor) = 'Alexânia' then 6816.93871622052
                      when trim(A01setor) = 'Cidade Ocidental: Jardim ABC' then 3481.30308742804
                      when trim(A01setor) = 'Cidade Ocidental: Sede' then 16336.6359413156
                      when trim(A01setor) = 'Cocalzinho de Goiás: Girassol/Edilândia' then 2586.23565877927
                      when trim(A01setor) = 'Cocalzinho de Goiás: Sede' then 2857.0211850431
                      when trim(A01setor) = 'Cristalina: Campos Lindos/Marajó' then 2248.025680682
                      when trim(A01setor) = 'Cristalina: Sede' then 11279.535766867
                      when trim(A01setor) = 'Formosa' then 32553.1907649511
                      when trim(A01setor) = 'Luziânia: Jardim Ingá' then 21900.9021576181
                      when trim(A01setor) = 'Luziânia: Sede' then 35544.8002655163
                      when trim(A01setor) = 'Novo Gama' then 34233.980408509
                      when trim(A01setor) = 'Padre Bernardo: Monte Alto' then 2985.79291807319
                      when trim(A01setor) = 'Padre Bernardo: Sede' then 4152.82150640541
                      when trim(A01setor) = 'Planaltina' then 25060.1922167094
                      when trim(A01setor) = 'Santo Antônio do Descoberto' then 19576.70397599
                      when trim(A01setor) = 'Valparaíso de Goiás' then 55499.373375776
               end;

select sum(t.Nzao)
from (select A01setor, max(TOT_DOM) as Nzao
      from pmad2018.dp_dom_1718_imput
      group by A01setor) t;

select sum(fator_mun) from pmad2018.dp_dom_1718_imput;

--IF OBJECT_ID('pmad2018.dp_mor_1718_20210504', 'U') IS NOT NULL DROP TABLE pmad2018.dp_mor_1718_20210504;

--select * into pmad2018.dp_mor_1718_20210504 from pmad2018.dp_mor_1718;

IF OBJECT_ID('pmad2018.tmp', 'U') IS NOT NULL DROP TABLE pmad2018.tmp;

CREATE TABLE pmad2018.tmp(
  distrito smallint null,
  distrito_nome nchar(39) null,
  dc_sexo varchar(9) null,
  cd_sexo smallint null,
  faixa_idade smallint null,
  fx_idade nchar(7) null,
  nsao float null,
  nzinho float null,
  fator float null) 
ON [PRIMARY];

--aqui
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (1,'Águas Lindas de Goiás','FEMININO',2,1,'fx0a4',11111.7082737087,119,93.375699779065);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (1,'Águas Lindas de Goiás','MASCULINO',1,1,'fx0a4',11417.1494938737,136,83.9496286314242);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (8,'Alexânia','FEMININO',2,1,'fx0a4',772.275971099021,40,19.3068992774755);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (8,'Alexânia','MASCULINO',1,1,'fx0a4',811.434084548422,50,16.2286816909684);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (16,'Cidade Ocidental: Jardim ABC','FEMININO',2,1,'fx0a4',578.375176722012,63,9.18055836066686);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (16,'Cidade Ocidental: Jardim ABC','MASCULINO',1,1,'fx0a4',599.929503205655,69,8.69463048124138);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (15,'Cidade Ocidental: Sede','FEMININO',2,1,'fx0a4',2586.01144446271,57,45.3686218326791);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (15,'Cidade Ocidental: Sede','MASCULINO',1,1,'fx0a4',2682.38441689956,68,39.4468296602876);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (2,'Cocalzinho de Goiás: Girassol/Edilândia','FEMININO',2,1,'fx0a4',319.39247611763,66,4.8392799411762);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (2,'Cocalzinho de Goiás: Girassol/Edilândia','MASCULINO',1,1,'fx0a4',341.681827877618,71,4.81242011095236);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (3,'Cocalzinho de Goiás: Sede','FEMININO',2,1,'fx0a4',329.873801514926,54,6.10877410212827);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (3,'Cocalzinho de Goiás: Sede','MASCULINO',1,1,'fx0a4',352.894610545076,49,7.20193082745054);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (10,'Cristalina: Campos Lindos/Marajó','FEMININO',2,1,'fx0a4',335.065622610352,65,5.15485573246696);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (10,'Cristalina: Campos Lindos/Marajó','MASCULINO',1,1,'fx0a4',352.3796145443,83,4.24553752463012);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (9,'Cristalina: Sede','FEMININO',2,1,'fx0a4',1712.22372969197,50,34.2444745938393);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (9,'Cristalina: Sede','MASCULINO',1,1,'fx0a4',1800.70021263893,67,26.8761225767005);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (11,'Formosa','FEMININO',2,1,'fx0a4',4216.44107569414,83,50.8004948878811);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (11,'Formosa','MASCULINO',1,1,'fx0a4',4386.88958111359,106,41.3857507652225);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (13,'Luziânia: Jardim Ingá','FEMININO',2,1,'fx0a4',3143.23622943663,54,58.2080783229006);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (13,'Luziânia: Jardim Ingá','MASCULINO',1,1,'fx0a4',3313.43974831959,63,52.5942817193586);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (12,'Luziânia: Sede','FEMININO',2,1,'fx0a4',4936.24589702723,59,83.6651846953768);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (12,'Luziânia: Sede','MASCULINO',1,1,'fx0a4',5203.53933615134,80,65.0442417018918);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (14,'Novo Gama','FEMININO',2,1,'fx0a4',5302.26488005837,81,65.4600602476342);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (14,'Novo Gama','MASCULINO',1,1,'fx0a4',5417.02315709862,84,64.4883709178407);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (5,'Padre Bernardo: Monte Alto','FEMININO',2,1,'fx0a4',418.27701291281,58,7.21167263642776);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (5,'Padre Bernardo: Monte Alto','MASCULINO',1,1,'fx0a4',443.162741629528,49,9.04413758427608);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (4,'Padre Bernardo: Sede','FEMININO',2,1,'fx0a4',540.411274140098,54,10.0076161877796);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (4,'Padre Bernardo: Sede','MASCULINO',1,1,'fx0a4',572.563479373786,46,12.4470321602997);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (6,'Planaltina','FEMININO',2,1,'fx0a4',3522.33393641252,80,44.0291742051565);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (6,'Planaltina','MASCULINO',1,1,'fx0a4',3689.00161733961,84,43.9166859207097);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (17,'Santo Antônio do Descoberto','FEMININO',2,1,'fx0a4',2958.25416523531,57,51.8991958813213);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (17,'Santo Antônio do Descoberto','MASCULINO',1,1,'fx0a4',3052.17137409825,64,47.6901777202851);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (7,'Valparaíso de Goiás','FEMININO',2,1,'fx0a4',7722.61840001785,108,71.5057259260912);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (7,'Valparaíso de Goiás','MASCULINO',1,1,'fx0a4',7876.7390961783,115,68.4933834450287);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (1,'Águas Lindas de Goiás','FEMININO',2,2,'fx5a9',9483.64673845286,122,77.7348093315808);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (1,'Águas Lindas de Goiás','MASCULINO',1,2,'fx5a9',9611.72662848872,138,69.6501929600632);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (8,'Alexânia','FEMININO',2,2,'fx5a9',748.512592557127,47,15.925799841641);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (8,'Alexânia','MASCULINO',1,2,'fx5a9',788.623420021763,50,15.7724684004353);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (16,'Cidade Ocidental: Jardim ABC','FEMININO',2,2,'fx5a9',536.350517836594,86,6.23663392833249);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (16,'Cidade Ocidental: Jardim ABC','MASCULINO',1,2,'fx5a9',556.5733716916,89,6.25363338979325);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (15,'Cidade Ocidental: Sede','FEMININO',2,2,'fx5a9',2398.11221710779,77,31.1443145078933);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (15,'Cidade Ocidental: Sede','MASCULINO',1,2,'fx5a9',2488.53195435366,84,29.6253804089722);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (2,'Cocalzinho de Goiás: Girassol/Edilândia','FEMININO',2,2,'fx5a9',310.548241170355,67,4.63504837567694);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (2,'Cocalzinho de Goiás: Girassol/Edilândia','MASCULINO',1,2,'fx5a9',330.746949443042,73,4.53078012935674);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (3,'Cocalzinho de Goiás: Sede','FEMININO',2,2,'fx5a9',320.739330224269,48,6.68206937967226);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (3,'Cocalzinho de Goiás: Sede','MASCULINO',1,2,'fx5a9',341.600888281598,63,5.42223632193013);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (10,'Cristalina: Campos Lindos/Marajó','FEMININO',2,2,'fx5a9',306.668962654811,72,4.25929114798349);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (10,'Cristalina: Campos Lindos/Marajó','MASCULINO',1,2,'fx5a9',327.63354036202,73,4.48813068989068);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (9,'Cristalina: Sede','FEMININO',2,2,'fx5a9',1567.11354309305,60,26.1185590515508);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (9,'Cristalina: Sede','MASCULINO',1,2,'fx5a9',1674.24493769451,50,33.4848987538901);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (11,'Formosa','FEMININO',2,2,'fx5a9',4045.47467806978,95,42.5839439796819);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (11,'Formosa','MASCULINO',1,2,'fx5a9',4152.77309006681,120,34.6064424172235);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (13,'Luziânia: Jardim Ingá','FEMININO',2,2,'fx5a9',2887.22230288961,54,53.467079683141);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (13,'Luziânia: Jardim Ingá','MASCULINO',1,2,'fx5a9',3062.67335302474,88,34.803106284372);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (12,'Luziânia: Sede','FEMININO',2,2,'fx5a9',4534.19285288615,96,47.2311755508974);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (12,'Luziânia: Sede','MASCULINO',1,2,'fx5a9',4809.72719492759,87,55.2842206313516);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (14,'Novo Gama','FEMININO',2,2,'fx5a9',4821.07822400968,85,56.7185673412904);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (14,'Novo Gama','MASCULINO',1,2,'fx5a9',4877.92588247856,90,54.199176471984);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (5,'Padre Bernardo: Monte Alto','FEMININO',2,2,'fx5a9',397.422196320421,57,6.97231923369159);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (5,'Padre Bernardo: Monte Alto','MASCULINO',1,2,'fx5a9',410.971057479145,62,6.62856544321202);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (4,'Padre Bernardo: Sede','FEMININO',2,2,'fx5a9',513.466982059193,50,10.2693396411839);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (4,'Padre Bernardo: Sede','MASCULINO',1,2,'fx5a9',530.972025597075,62,8.56406492898507);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (6,'Planaltina','FEMININO',2,2,'fx5a9',3285.23990819223,84,39.1099989070504);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (6,'Planaltina','MASCULINO',1,2,'fx5a9',3405.29183805898,88,38.6964981597611);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (17,'Santo Antônio do Descoberto','FEMININO',2,2,'fx5a9',2742.77216042597,72,38.094057783694);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (17,'Santo Antônio do Descoberto','MASCULINO',1,2,'fx5a9',2734.88698522844,80,34.1860873153556);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (7,'Valparaíso de Goiás','FEMININO',2,2,'fx5a9',7104.40208357317,100,71.0440208357317);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (7,'Valparaíso de Goiás','MASCULINO',1,2,'fx5a9',7049.4774887,130,54.2267499130769);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (1,'Águas Lindas de Goiás','FEMININO',2,3,'fx10a14',8807.68328019007,121,72.7907709106617);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (1,'Águas Lindas de Goiás','MASCULINO',1,3,'fx10a14',8949.1575106414,141,63.4692022031305);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (8,'Alexânia','FEMININO',2,3,'fx10a14',775.644301664853,46,16.8618326448881);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (8,'Alexânia','MASCULINO',1,3,'fx10a14',827.384556365615,52,15.9112414685695);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (16,'Cidade Ocidental: Jardim ABC','FEMININO',2,3,'fx10a14',508.903746177873,90,5.65448606864303);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (16,'Cidade Ocidental: Jardim ABC','MASCULINO',1,3,'fx10a14',537.840231464738,81,6.64000285758935);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (15,'Cidade Ocidental: Sede','FEMININO',2,3,'fx10a14',2275.39314395309,84,27.0880136184892);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (15,'Cidade Ocidental: Sede','MASCULINO',1,3,'fx10a14',2404.77297408077,79,30.4401642288705);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (2,'Cocalzinho de Goiás: Girassol/Edilândia','FEMININO',2,3,'fx10a14',312.281850096539,79,3.9529348113486);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (2,'Cocalzinho de Goiás: Girassol/Edilândia','MASCULINO',1,3,'fx10a14',336.022156705778,79,4.25344502159212);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (3,'Cocalzinho de Goiás: Sede','FEMININO',2,3,'fx10a14',322.52983003119,61,5.28737426280639);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (3,'Cocalzinho de Goiás: Sede','MASCULINO',1,3,'fx10a14',347.049209089559,72,4.82012790402165);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (10,'Cristalina: Campos Lindos/Marajó','FEMININO',2,3,'fx10a14',296.23090555732,75,3.94974540743093);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (10,'Cristalina: Campos Lindos/Marajó','MASCULINO',1,3,'fx10a14',319.089290758971,80,3.98861613448714);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (9,'Cristalina: Sede','FEMININO',2,3,'fx10a14',1513.77387513496,81,18.6885663596909);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (9,'Cristalina: Sede','MASCULINO',1,3,'fx10a14',1630.58284306129,83,19.6455764224252);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (11,'Formosa','FEMININO',2,3,'fx10a14',4063.44420965108,108,37.6244834226951);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (11,'Formosa','MASCULINO',1,3,'fx10a14',4192.73577728285,125,33.5418862182628);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (13,'Luziânia: Jardim Ingá','FEMININO',2,3,'fx10a14',2840.42854656642,66,43.0367961600973);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (13,'Luziânia: Jardim Ingá','MASCULINO',1,3,'fx10a14',3016.09413509112,74,40.7580288525827);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (12,'Luziânia: Sede','FEMININO',2,3,'fx10a14',4460.70633428037,88,50.6898447077315);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (12,'Luziânia: Sede','MASCULINO',1,3,'fx10a14',4736.57759476128,103,45.9861902404008);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (14,'Novo Gama','FEMININO',2,3,'fx10a14',4628.61835231519,79,58.5901057255088);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (14,'Novo Gama','MASCULINO',1,3,'fx10a14',4658.8732733032,99,47.0593259929616);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (5,'Padre Bernardo: Monte Alto','FEMININO',2,3,'fx10a14',411.84426648383,69,5.9687574852729);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (5,'Padre Bernardo: Monte Alto','MASCULINO',1,3,'fx10a14',417.690894297795,87,4.80104476204362);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (4,'Padre Bernardo: Sede','FEMININO',2,3,'fx10a14',532.100206147869,58,9.17414148530808);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (4,'Padre Bernardo: Sede','MASCULINO',1,3,'fx10a14',539.654012569992,76,7.10071069171042);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (6,'Planaltina','FEMININO',2,3,'fx10a14',3224.36247166283,95,33.9406575964508);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (6,'Planaltina','MASCULINO',1,3,'fx10a14',3385.98903262866,74,45.756608549036);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (17,'Santo Antônio do Descoberto','FEMININO',2,3,'fx10a14',2722.71903469598,104,26.1799907182306);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (17,'Santo Antônio do Descoberto','MASCULINO',1,3,'fx10a14',2672.69523806252,104,25.6989926736781);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (7,'Valparaíso de Goiás','FEMININO',2,3,'fx10a14',6681.82891354885,91,73.4266913576796);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (7,'Valparaíso de Goiás','MASCULINO',1,3,'fx10a14',6523.29207487228,109,59.8467162832319);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (1,'Águas Lindas de Goiás','FEMININO',2,4,'fx15a19',10106.9133593679,157,64.375244327184);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (1,'Águas Lindas de Goiás','MASCULINO',1,4,'fx15a19',9970.80205050339,167,59.7054015000203);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (8,'Alexânia','FEMININO',2,4,'fx15a19',838.51869336235,65,12.90028759019);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (8,'Alexânia','MASCULINO',1,4,'fx15a19',886.955952665941,88,10.0790449166584);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (16,'Cidade Ocidental: Jardim ABC','FEMININO',2,4,'fx15a19',543.306204175571,103,5.27481751626768);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (16,'Cidade Ocidental: Jardim ABC','MASCULINO',1,4,'fx15a19',563.209981916817,112,5.02866055282873);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (15,'Cidade Ocidental: Sede','FEMININO',2,4,'fx15a19',2429.2122456025,103,23.5845849087621);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (15,'Cidade Ocidental: Sede','MASCULINO',1,4,'fx15a19',2518.20534056661,92,27.3717971800718);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (2,'Cocalzinho de Goiás: Girassol/Edilândia','FEMININO',2,4,'fx15a19',323.631010530224,78,4.14911551961826);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (2,'Cocalzinho de Goiás: Girassol/Edilândia','MASCULINO',1,4,'fx15a19',363.80046695381,84,4.3309579399263);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (3,'Cocalzinho de Goiás: Sede','FEMININO',2,4,'fx15a19',334.251429555919,81,4.12656085871504);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (3,'Cocalzinho de Goiás: Sede','MASCULINO',1,4,'fx15a19',375.739104708154,70,5.36770149583077);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (10,'Cristalina: Campos Lindos/Marajó','FEMININO',2,4,'fx15a19',318.908412194347,82,3.88912697797985);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (10,'Cristalina: Campos Lindos/Marajó','MASCULINO',1,4,'fx15a19',337.362104795173,116,2.90829400685494);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (9,'Cristalina: Sede','FEMININO',2,4,'fx15a19',1629.65853286758,87,18.73170727434);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (9,'Cristalina: Sede','MASCULINO',1,4,'fx15a19',1723.95901683074,127,13.5744804474861);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (11,'Formosa','FEMININO',2,4,'fx15a19',4405.69305193764,159,27.7087613329411);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (11,'Formosa','MASCULINO',1,4,'fx15a19',4529.17537401633,138,32.8201114059155);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (13,'Luziânia: Jardim Ingá','FEMININO',2,4,'fx15a19',3107.83704171575,82,37.9004517282409);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (13,'Luziânia: Jardim Ingá','MASCULINO',1,4,'fx15a19',3219.62108557965,81,39.7484084639464);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (12,'Luziânia: Sede','FEMININO',2,4,'fx15a19',4880.6537994595,105,46.4824171377095);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (12,'Luziânia: Sede','MASCULINO',1,4,'fx15a19',5056.20329291109,120,42.1350274409258);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (14,'Novo Gama','FEMININO',2,4,'fx15a19',5077.62334893405,125,40.6209867914724);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (14,'Novo Gama','MASCULINO',1,4,'fx15a19',4930.81751503719,127,38.8253347640724);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (5,'Padre Bernardo: Monte Alto','FEMININO',2,4,'fx15a19',424.767119186379,93,4.56738837834816);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (5,'Padre Bernardo: Monte Alto','MASCULINO',1,4,'fx15a19',442.574293680722,83,5.33222040579183);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (4,'Padre Bernardo: Sede','FEMININO',2,4,'fx15a19',548.796450691349,67,8.19099180136343);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (4,'Padre Bernardo: Sede','MASCULINO',1,4,'fx15a19',571.803208319049,70,8.1686172617007);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (6,'Planaltina','FEMININO',2,4,'fx15a19',3564.1645655078,89,40.0467928708741);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (6,'Planaltina','MASCULINO',1,4,'fx15a19',3811.54117990849,104,36.649434422197);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (17,'Santo Antônio do Descoberto','FEMININO',2,4,'fx15a19',2895.94770869117,114,25.4030500762383);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (17,'Santo Antônio do Descoberto','MASCULINO',1,4,'fx15a19',2925.93939505325,115,25.4429512613326);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (7,'Valparaíso de Goiás','FEMININO',2,4,'fx15a19',7236.60371800192,96,75.3812887291867);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (7,'Valparaíso de Goiás','MASCULINO',1,4,'fx15a19',6942.16413466301,131,52.9936193485726);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (1,'Águas Lindas de Goiás','FEMININO',2,5,'fx20a24',11496.6260372859,170,67.6272119840344);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (1,'Águas Lindas de Goiás','MASCULINO',1,5,'fx20a24',11220.6419951936,155,72.3912386786685);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (8,'Alexânia','FEMININO',2,5,'fx20a24',820.242693035909,54,15.189679500665);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (8,'Alexânia','MASCULINO',1,5,'fx20a24',857.736699564744,55,15.595212719359);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (16,'Cidade Ocidental: Jardim ABC','FEMININO',2,5,'fx20a24',564.69001084991,82,6.88646354695012);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (16,'Cidade Ocidental: Jardim ABC','MASCULINO',1,5,'fx20a24',560.518328456354,66,8.49270194630839);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (15,'Cidade Ocidental: Sede','FEMININO',2,5,'fx20a24',2524.82279566004,69,36.5916347197107);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (15,'Cidade Ocidental: Sede','MASCULINO',1,5,'fx20a24',2506.1705110417,100,25.061705110417);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (2,'Cocalzinho de Goiás: Girassol/Edilândia','FEMININO',2,5,'fx20a24',322.486102955592,69,4.67371163703756);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (2,'Cocalzinho de Goiás: Girassol/Edilândia','MASCULINO',1,5,'fx20a24',347.457311852072,75,4.63276415802763);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (3,'Cocalzinho de Goiás: Sede','FEMININO',2,5,'fx20a24',333.068950185653,51,6.53076372913045);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (3,'Cocalzinho de Goiás: Sede','MASCULINO',1,5,'fx20a24',358.859625367592,55,6.52472046122895);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (10,'Cristalina: Campos Lindos/Marajó','FEMININO',2,5,'fx20a24',325.889763925056,68,4.79249652830964);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (10,'Cristalina: Campos Lindos/Marajó','MASCULINO',1,5,'fx20a24',344.897819371229,62,5.56286805437466);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (9,'Cristalina: Sede','FEMININO',2,5,'fx20a24',1665.33404026675,85,19.5921651796088);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (9,'Cristalina: Sede','MASCULINO',1,5,'fx20a24',1762.46738189902,90,19.5829709099891);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (11,'Formosa','FEMININO',2,5,'fx20a24',4496.10286634001,126,35.6833560820636);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (11,'Formosa','MASCULINO',1,5,'fx20a24',4453.97742586488,133,33.4885520741721);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (13,'Luziânia: Jardim Ingá','FEMININO',2,5,'fx20a24',3290.12186411198,65,50.6172594478766);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (13,'Luziânia: Jardim Ingá','MASCULINO',1,5,'fx20a24',3300.42889626499,79,41.7775809653796);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (12,'Luziânia: Sede','FEMININO',2,5,'fx20a24',5166.92013166101,106,48.7445295439718);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (12,'Luziânia: Sede','MASCULINO',1,5,'fx20a24',5183.10664818793,118,43.9246326117621);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (14,'Novo Gama','FEMININO',2,5,'fx20a24',5392.44787450618,119,45.3146880210603);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (14,'Novo Gama','MASCULINO',1,5,'fx20a24',5139.20995568922,116,44.3035341007691);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (5,'Padre Bernardo: Monte Alto','FEMININO',2,5,'fx20a24',390.344224431494,76,5.13610821620386);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (5,'Padre Bernardo: Monte Alto','MASCULINO',1,5,'fx20a24',394.07174082962,77,5.11781481596908);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (4,'Padre Bernardo: Sede','FEMININO',2,5,'fx20a24',504.322286824363,73,6.90852447704607);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (4,'Padre Bernardo: Sede','MASCULINO',1,5,'fx20a24',509.138214604045,70,7.27340306577207);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (6,'Planaltina','FEMININO',2,5,'fx20a24',3899.41712974652,85,45.8754956440767);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (6,'Planaltina','MASCULINO',1,5,'fx20a24',4011.98482834051,103,38.9513090130147);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (17,'Santo Antônio do Descoberto','FEMININO',2,5,'fx20a24',2941.4435496393,74,39.7492371572878);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (17,'Santo Antônio do Descoberto','MASCULINO',1,5,'fx20a24',2945.42160082446,94,31.3342723491964);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (7,'Valparaíso de Goiás','FEMININO',2,5,'fx20a24',8060.89709854316,122,66.072927037239);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (7,'Valparaíso de Goiás','MASCULINO',1,5,'fx20a24',7578.85625058564,127,59.6760334691782);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (1,'Águas Lindas de Goiás','FEMININO',2,6,'fx25a29',10915.4101862472,116,94.0983636745448);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (1,'Águas Lindas de Goiás','MASCULINO',1,6,'fx25a29',11072.5583478071,147,75.3235261755584);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (8,'Alexânia','FEMININO',2,6,'fx25a29',766.814044113166,52,14.7464239252532);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (8,'Alexânia','MASCULINO',1,6,'fx25a29',768.051066985854,70,10.9721580997979);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (16,'Cidade Ocidental: Jardim ABC','FEMININO',2,6,'fx25a29',548.295551537071,50,10.9659110307414);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (16,'Cidade Ocidental: Jardim ABC','MASCULINO',1,6,'fx25a29',533.6244491205,65,8.20960690954615);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (15,'Cidade Ocidental: Sede','FEMININO',2,6,'fx25a29',2451.52044605184,68,36.0517712654682);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (15,'Cidade Ocidental: Sede','MASCULINO',1,6,'fx25a29',2385.92351126089,73,32.6838837159026);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (2,'Cocalzinho de Goiás: Girassol/Edilândia','FEMININO',2,6,'fx25a29',307.972971350067,84,3.6663448970246);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (2,'Cocalzinho de Goiás: Girassol/Edilândia','MASCULINO',1,6,'fx25a29',319.326126748849,61,5.23485453686638);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (3,'Cocalzinho de Goiás: Sede','FEMININO',2,6,'fx25a29',318.079549205406,41,7.75803778549771);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (3,'Cocalzinho de Goiás: Sede','MASCULINO',1,6,'fx25a29',329.805274795782,53,6.22274103388268);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (10,'Cristalina: Campos Lindos/Marajó','FEMININO',2,6,'fx25a29',316.8972057161,64,4.95151883931407);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (10,'Cristalina: Campos Lindos/Marajó','MASCULINO',1,6,'fx25a29',330.580751984757,62,5.33194761265737);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (9,'Cristalina: Sede','FEMININO',2,6,'fx25a29',1619.38103728168,55,29.4432915869396);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (9,'Cristalina: Sede','MASCULINO',1,6,'fx25a29',1689.30552683392,67,25.2135153258793);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (11,'Formosa','FEMININO',2,6,'fx25a29',4535.19000587973,96,47.2415625612472);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (11,'Formosa','MASCULINO',1,6,'fx25a29',4499.15356127691,120,37.4929463439743);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (13,'Luziânia: Jardim Ingá','FEMININO',2,6,'fx25a29',3193.20529530178,73,43.7425382918052);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (13,'Luziânia: Jardim Ingá','MASCULINO',1,6,'fx25a29',3140.70382818239,54,58.1611820033775);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (12,'Luziânia: Sede','FEMININO',2,6,'fx25a29',5014.71903055921,88,56.985443529082);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (12,'Luziânia: Sede','MASCULINO',1,6,'fx25a29',4932.26892730926,96,51.3778013261382);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (14,'Novo Gama','FEMININO',2,6,'fx25a29',5160.21475726946,105,49.1449024501853);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (14,'Novo Gama','MASCULINO',1,6,'fx25a29',4943.03169573264,86,57.4771127410772);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (5,'Padre Bernardo: Monte Alto','FEMININO',2,6,'fx25a29',354.077953148212,65,5.4473531253571);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (5,'Padre Bernardo: Monte Alto','MASCULINO',1,6,'fx25a29',344.410926751228,51,6.75315542649468);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (4,'Padre Bernardo: Sede','FEMININO',2,6,'fx25a29',457.466492058051,66,6.93131048572804);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (4,'Padre Bernardo: Sede','MASCULINO',1,6,'fx25a29',444.976754656611,62,7.17704442994533);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (6,'Planaltina','FEMININO',2,6,'fx25a29',3647.93990976188,85,42.9169401148457);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (6,'Planaltina','MASCULINO',1,6,'fx25a29',3695.7503181378,86,42.973840908579);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (17,'Santo Antônio do Descoberto','FEMININO',2,6,'fx25a29',2836.85836860186,75,37.8247782480247);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (17,'Santo Antônio do Descoberto','MASCULINO',1,6,'fx25a29',2750.96030848506,86,31.9879105637797);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (7,'Valparaíso de Goiás','FEMININO',2,6,'fx25a29',8246.36219182116,120,68.719684931843);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (7,'Valparaíso de Goiás','MASCULINO',1,6,'fx25a29',7815.05392561854,108,72.3616104223939);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (1,'Águas Lindas de Goiás','FEMININO',2,7,'fx30a34',9785.93980996595,113,86.6012372563359);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (1,'Águas Lindas de Goiás','MASCULINO',1,7,'fx30a34',9825.57437325905,106,92.6940978609345);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (8,'Alexânia','FEMININO',2,7,'fx30a34',779.488135690968,44,17.715639447522);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (8,'Alexânia','MASCULINO',1,7,'fx30a34',751.481152589771,42,17.8924083949946);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (16,'Cidade Ocidental: Jardim ABC','FEMININO',2,7,'fx30a34',567.929022521782,68,8.35189739002621);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (16,'Cidade Ocidental: Jardim ABC','MASCULINO',1,7,'fx30a34',522.154657241493,63,8.28816916256337);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (15,'Cidade Ocidental: Sede','FEMININO',2,7,'fx30a34',2539.30495462765,89,28.5315163441309);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (15,'Cidade Ocidental: Sede','MASCULINO',1,7,'fx30a34',2334.64016740643,80,29.1830020925804);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (2,'Cocalzinho de Goiás: Girassol/Edilândia','FEMININO',2,7,'fx30a34',314.84624702213,63,4.99755947654174);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (2,'Cocalzinho de Goiás: Girassol/Edilândia','MASCULINO',1,7,'fx30a34',330.549713485816,68,4.86102519832083);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (3,'Cocalzinho de Goiás: Sede','FEMININO',2,7,'fx30a34',325.178381345611,70,4.64540544779445);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (3,'Cocalzinho de Goiás: Sede','MASCULINO',1,7,'fx30a34',341.397179741571,57,5.98942420599248);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (10,'Cristalina: Campos Lindos/Marajó','FEMININO',2,7,'fx30a34',307.036710828835,75,4.09382281105113);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (10,'Cristalina: Campos Lindos/Marajó','MASCULINO',1,7,'fx30a34',328.65545963798,74,4.44128999510784);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (9,'Cristalina: Sede','FEMININO',2,7,'fx30a34',1568.99277840584,56,28.0177281858186);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (9,'Cristalina: Sede','MASCULINO',1,7,'fx30a34',1679.46706230549,71,23.6544656662746);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (11,'Formosa','FEMININO',2,7,'fx30a34',4690.19470016333,119,39.4134008417086);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (11,'Formosa','MASCULINO',1,7,'fx30a34',4679.3871308686,98,47.7488482741694);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (13,'Luziânia: Jardim Ingá','FEMININO',2,7,'fx30a34',3081.95423972698,59,52.2365125377454);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (13,'Luziânia: Jardim Ingá','MASCULINO',1,7,'fx30a34',3001.35707958561,51,58.8501388154042);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (12,'Luziânia: Sede','FEMININO',2,7,'fx30a34',4840.00656018294,88,55.0000745475334);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (12,'Luziânia: Sede','MASCULINO',1,7,'fx30a34',4713.43401773959,104,45.3214809398037);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (14,'Novo Gama','FEMININO',2,7,'fx30a34',5053.18019681817,80,63.1647524602271);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (14,'Novo Gama','MASCULINO',1,7,'fx30a34',4783.68924333559,82,58.3376736992145);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (5,'Padre Bernardo: Monte Alto','FEMININO',2,7,'fx30a34',347.261740143984,53,6.55210830460346);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (5,'Padre Bernardo: Monte Alto','MASCULINO',1,7,'fx30a34',333.811293337904,56,5.96091595246258);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (4,'Padre Bernardo: Sede','FEMININO',2,7,'fx30a34',448.659987658553,56,8.01178549390274);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (4,'Padre Bernardo: Sede','MASCULINO',1,7,'fx30a34',431.282094846303,62,6.95616282010167);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (6,'Planaltina','FEMININO',2,7,'fx30a34',3440.96460231106,84,40.9638643132269);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (6,'Planaltina','MASCULINO',1,7,'fx30a34',3341.98427562369,72,46.4164482725512);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (17,'Santo Antônio do Descoberto','FEMININO',2,7,'fx30a34',2756.87353315012,91,30.2953135511002);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (17,'Santo Antônio do Descoberto','MASCULINO',1,7,'fx30a34',2614.12690621779,93,28.1088914647075);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (7,'Valparaíso de Goiás','FEMININO',2,7,'fx30a34',8513.11386074114,128,66.5087020370402);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (7,'Valparaíso de Goiás','MASCULINO',1,7,'fx30a34',8176.28010262588,111,73.6601811047377);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (1,'Águas Lindas de Goiás','FEMININO',2,8,'fx35a39',8771.20683751161,134,65.4567674441165);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (1,'Águas Lindas de Goiás','MASCULINO',1,8,'fx35a39',8464.41840517414,130,65.1109108090319);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (8,'Alexânia','FEMININO',2,8,'fx35a39',830.143066158868,50,16.6028613231774);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (8,'Alexânia','MASCULINO',1,8,'fx35a39',822.622538193689,53,15.5211799659187);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (16,'Cidade Ocidental: Jardim ABC','FEMININO',2,8,'fx35a39',561.274426434325,101,5.55717253895371);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (16,'Cidade Ocidental: Jardim ABC','MASCULINO',1,8,'fx35a39',494.064199243794,78,6.33415640056146);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (15,'Cidade Ocidental: Sede','FEMININO',2,8,'fx35a39',2509.55115063839,80,31.3693893829799);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (15,'Cidade Ocidental: Sede','MASCULINO',1,8,'fx35a39',2209.04306575703,83,26.6149766958678);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (2,'Cocalzinho de Goiás: Girassol/Edilândia','FEMININO',2,8,'fx35a39',321.140417495916,79,4.06506857589767);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (2,'Cocalzinho de Goiás: Girassol/Edilândia','MASCULINO',1,8,'fx35a39',337.04503251151,62,5.43621020179856);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (3,'Cocalzinho de Goiás: Sede','FEMININO',2,8,'fx35a39',331.679104114065,78,4.25229620659058);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (3,'Cocalzinho de Goiás: Sede','MASCULINO',1,8,'fx35a39',348.10565204218,78,4.46289297489975);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (10,'Cristalina: Campos Lindos/Marajó','FEMININO',2,8,'fx35a39',293.915430485869,74,3.97183014170093);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (10,'Cristalina: Campos Lindos/Marajó','MASCULINO',1,8,'fx35a39',314.739919720546,61,5.15967081509092);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (9,'Cristalina: Sede','FEMININO',2,8,'fx35a39',1501.94153216894,73,20.5745415365609);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (9,'Cristalina: Sede','MASCULINO',1,8,'fx35a39',1608.35705862178,72,22.3382924808581);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (11,'Formosa','FEMININO',2,8,'fx35a39',4621.8524054046,111,41.6383099586);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (11,'Formosa','MASCULINO',1,8,'fx35a39',4520.72355028953,90,50.2302616698837);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (13,'Luziânia: Jardim Ingá','FEMININO',2,8,'fx35a39',2994.28473498025,68,44.0335990438272);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (13,'Luziânia: Jardim Ingá','MASCULINO',1,8,'fx35a39',2851.32865189523,58,49.1608388257797);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (12,'Luziânia: Sede','FEMININO',2,8,'fx35a39',4702.32736539394,102,46.1012486803328);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (12,'Luziânia: Sede','MASCULINO',1,8,'fx35a39',4477.82423324787,84,53.3074313481889);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (14,'Novo Gama','FEMININO',2,8,'fx35a39',4891.11427892658,99,49.4051947366321);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (14,'Novo Gama','MASCULINO',1,8,'fx35a39',4485.07633839912,80,56.063454229989);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (5,'Padre Bernardo: Monte Alto','FEMININO',2,8,'fx35a39',366.900644497772,65,5.64462529996572);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (5,'Padre Bernardo: Monte Alto','MASCULINO',1,8,'fx35a39',347.978592617987,43,8.09252540972062);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (4,'Padre Bernardo: Sede','FEMININO',2,8,'fx35a39',474.033328762427,70,6.7719046966061);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (4,'Padre Bernardo: Sede','MASCULINO',1,8,'fx35a39',449.586156553537,62,7.25138962183124);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (6,'Planaltina','FEMININO',2,8,'fx35a39',3357.69290628862,92,36.4966620248763);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (6,'Planaltina','MASCULINO',1,8,'fx35a39',3069.19429492703,70,43.8456327846718);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (17,'Santo Antônio do Descoberto','FEMININO',2,8,'fx35a39',2703.41633596702,90,30.0379592885225);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (17,'Santo Antônio do Descoberto','MASCULINO',1,8,'fx35a39',2554.55946444521,87,29.3627524648874);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (7,'Valparaíso de Goiás','FEMININO',2,8,'fx35a39',8132.34280686255,151,53.8565748798844);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (7,'Valparaíso de Goiás','MASCULINO',1,8,'fx35a39',7575.91480016956,127,59.65287244228);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (1,'Águas Lindas de Goiás','FEMININO',2,9,'fx40a44',7941.86860840752,132,60.1656712758146);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (1,'Águas Lindas de Goiás','MASCULINO',1,9,'fx40a44',7453.89459821217,88,84.7033477069565);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (8,'Alexânia','FEMININO',2,9,'fx40a44',816.88902796518,54,15.1275745919478);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (8,'Alexânia','MASCULINO',1,9,'fx40a44',810.430778454842,65,12.4681658223822);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (16,'Cidade Ocidental: Jardim ABC','FEMININO',2,9,'fx40a44',473.769574880815,78,6.0739689087284);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (16,'Cidade Ocidental: Jardim ABC','MASCULINO',1,9,'fx40a44',432.748665461121,64,6.76169789783002);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (15,'Cidade Ocidental: Sede','FEMININO',2,9,'fx40a44',2118.30243065373,70,30.2614632950533);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (15,'Cidade Ocidental: Sede','MASCULINO',1,9,'fx40a44',1934.89113381555,74,26.1471774839939);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (2,'Cocalzinho de Goiás: Girassol/Edilândia','FEMININO',2,9,'fx40a44',295.072734828457,55,5.36495881506285);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (2,'Cocalzinho de Goiás: Girassol/Edilândia','MASCULINO',1,9,'fx40a44',325.25238976682,61,5.33200638962);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (3,'Cocalzinho de Goiás: Sede','FEMININO',2,9,'fx40a44',304.755972790732,71,4.29233764493989);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (3,'Cocalzinho de Goiás: Sede','MASCULINO',1,9,'fx40a44',335.926016693896,68,4.94008848079258);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (10,'Cristalina: Campos Lindos/Marajó','FEMININO',2,9,'fx40a44',263.647270117498,61,4.32208639536881);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (10,'Cristalina: Campos Lindos/Marajó','MASCULINO',1,9,'fx40a44',284.967868847253,73,3.90366943626374);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (9,'Cristalina: Sede','FEMININO',2,9,'fx40a44',1347.26776398857,78,17.2726636408791);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (9,'Cristalina: Sede','MASCULINO',1,9,'fx40a44',1456.21846681486,70,20.803120954498);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (11,'Formosa','FEMININO',2,9,'fx40a44',4088.79791025984,103,39.6970670899013);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (11,'Formosa','MASCULINO',1,9,'fx40a44',3940.93570197476,97,40.6282031131418);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (13,'Luziânia: Jardim Ingá','FEMININO',2,9,'fx40a44',2711.81119153212,72,37.664044326835);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (13,'Luziânia: Jardim Ingá','MASCULINO',1,9,'fx40a44',2588.96552002633,54,47.9438059264136);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (12,'Luziânia: Sede','FEMININO',2,9,'fx40a44',4258.72123206985,97,43.9043425986582);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (12,'Luziânia: Sede','MASCULINO',1,9,'fx40a44',4065.80017947474,92,44.193480211682);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (14,'Novo Gama','FEMININO',2,9,'fx40a44',4440.37778143574,102,43.533115504272);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (14,'Novo Gama','MASCULINO',1,9,'fx40a44',4146.98896056519,83,49.963722416448);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (5,'Padre Bernardo: Monte Alto','FEMININO',2,9,'fx40a44',346.262455947892,65,5.32711470689064);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (5,'Padre Bernardo: Monte Alto','MASCULINO',1,9,'fx40a44',324.835205576506,49,6.6292899097246);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (4,'Padre Bernardo: Sede','FEMININO',2,9,'fx40a44',447.368918752143,82,5.45571852136759);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (4,'Padre Bernardo: Sede','MASCULINO',1,9,'fx40a44',419.685045823334,63,6.66166739402118);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (6,'Planaltina','FEMININO',2,9,'fx40a44',3039.94837891995,78,38.9736971656404);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (6,'Planaltina','MASCULINO',1,9,'fx40a44',2750.37847159603,84,32.7426008523337);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (17,'Santo Antônio do Descoberto','FEMININO',2,9,'fx40a44',2413.88986533837,66,36.5740888687632);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (17,'Santo Antônio do Descoberto','MASCULINO',1,9,'fx40a44',2316.49985194091,63,36.7698389196971);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (7,'Valparaíso de Goiás','FEMININO',2,9,'fx40a44',6829.56291359347,121,56.442668707384);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (7,'Valparaíso de Goiás','MASCULINO',1,9,'fx40a44',6271.05625549383,113,55.4960730574675);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (1,'Águas Lindas de Goiás','FEMININO',2,10,'fx45a49',6830.09946326943,114,59.913153186574);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (1,'Águas Lindas de Goiás','MASCULINO',1,10,'fx45a49',6595.1869443079,107,61.6372611617561);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (8,'Alexânia','FEMININO',2,10,'fx45a49',695.87137984766,51,13.644536859758);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (8,'Alexânia','MASCULINO',1,10,'fx45a49',724.699708269859,40,18.1174927067465);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (16,'Cidade Ocidental: Jardim ABC','FEMININO',2,10,'fx45a49',379.305232286701,60,6.32175387144501);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (16,'Cidade Ocidental: Jardim ABC','MASCULINO',1,10,'fx45a49',359.33919579155,61,5.89080648838607);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (15,'Cidade Ocidental: Sede','FEMININO',2,10,'fx45a49',1695.93667072168,71,23.8864319819955);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (15,'Cidade Ocidental: Sede','MASCULINO',1,10,'fx45a49',1606.66520653186,50,32.1333041306373);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (2,'Cocalzinho de Goiás: Girassol/Edilândia','FEMININO',2,10,'fx45a49',260.007567057775,58,4.48288908720302);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (2,'Cocalzinho de Goiás: Girassol/Edilândia','MASCULINO',1,10,'fx45a49',267.177499777217,44,6.07221590402765);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (3,'Cocalzinho de Goiás: Sede','FEMININO',2,10,'fx45a49',268.540090895589,45,5.96755757545753);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (3,'Cocalzinho de Goiás: Sede','MASCULINO',1,10,'fx45a49',275.945315312639,54,5.11009843171554);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (10,'Cristalina: Campos Lindos/Marajó','FEMININO',2,10,'fx45a49',220.975607557955,44,5.02217289904443);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (10,'Cristalina: Campos Lindos/Marajó','MASCULINO',1,10,'fx45a49',233.383571165449,46,5.07355589490107);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (9,'Cristalina: Sede','FEMININO',2,10,'fx45a49',1129.21067818355,66,17.1092526997508);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (9,'Cristalina: Sede','MASCULINO',1,10,'fx45a49',1192.61679415688,43,27.735274282718);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (11,'Formosa','FEMININO',2,10,'fx45a49',3367.2979342539,95,35.4452414131989);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (11,'Formosa','MASCULINO',1,10,'fx45a49',3281.78375043801,90,36.4642638937557);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (13,'Luziânia: Jardim Ingá','FEMININO',2,10,'fx45a49',2311.58682153004,52,44.4535927217315);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (13,'Luziânia: Jardim Ingá','MASCULINO',1,10,'fx45a49',2196.2825101864,72,30.503923752589);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (12,'Luziânia: Sede','FEMININO',2,10,'fx45a49',3630.19516526921,80,45.3774395658652);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (12,'Luziânia: Sede','MASCULINO',1,10,'fx45a49',3449.11732312383,59,58.4596156461666);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (14,'Novo Gama','FEMININO',2,10,'fx45a49',3659.18690625334,87,42.0596196121073);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (14,'Novo Gama','MASCULINO',1,10,'fx45a49',3511.45714506887,93,37.7576037104179);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (5,'Padre Bernardo: Monte Alto','FEMININO',2,10,'fx45a49',297.896460290253,44,6.77037409750574);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (5,'Padre Bernardo: Monte Alto','MASCULINO',1,10,'fx45a49',295.146972917381,52,5.67590332533425);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (4,'Padre Bernardo: Sede','FEMININO',2,10,'fx45a49',384.880356073592,61,6.30951403399331);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (4,'Padre Bernardo: Sede','MASCULINO',1,10,'fx45a49',381.328035653068,56,6.8094292080905);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (6,'Planaltina','FEMININO',2,10,'fx45a49',2532.64753818923,65,38.9638082798343);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (6,'Planaltina','MASCULINO',1,10,'fx45a49',2401.95592348796,59,40.7111173472536);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (17,'Santo Antônio do Descoberto','FEMININO',2,10,'fx45a49',2024.50669185847,74,27.3581985386279);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (17,'Santo Antônio do Descoberto','MASCULINO',1,10,'fx45a49',1919.96354173823,59,32.5417549447158);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (7,'Valparaíso de Goiás','FEMININO',2,10,'fx45a49',5422.92383749414,114,47.5695073464399);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (7,'Valparaíso de Goiás','MASCULINO',1,10,'fx45a49',4925.8970632934,90,54.7321895921489);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (1,'Águas Lindas de Goiás','FEMININO',2,11,'fx50a54',5170.85759477124,102,50.6946823016788);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (1,'Águas Lindas de Goiás','MASCULINO',1,11,'fx50a54',5072.75143048046,103,49.2500138881598);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (8,'Alexânia','FEMININO',2,11,'fx50a54',592.82982656148,54,10.9783301215089);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (8,'Alexânia','MASCULINO',1,11,'fx50a54',620.679679357998,49,12.6669322317959);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (16,'Cidade Ocidental: Jardim ABC','FEMININO',2,11,'fx50a54',305.661946408022,39,7.83748580533391);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (16,'Cidade Ocidental: Jardim ABC','MASCULINO',1,11,'fx50a54',280.560600361664,48,5.84501250753466);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (15,'Cidade Ocidental: Sede','FEMININO',2,11,'fx50a54',1366.66531234588,61,22.4043493827194);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (15,'Cidade Ocidental: Sede','MASCULINO',1,11,'fx50a54',1254.433026522,53,23.6685476702264);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (2,'Cocalzinho de Goiás: Girassol/Edilândia','FEMININO',2,11,'fx50a54',227.057383231843,43,5.28040426120565);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (2,'Cocalzinho de Goiás: Girassol/Edilândia','MASCULINO',1,11,'fx50a54',222.113963998218,29,7.65910220683509);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (3,'Cocalzinho de Goiás: Sede','FEMININO',2,11,'fx50a54',234.50859919798,58,4.04325171031);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (3,'Cocalzinho de Goiás: Sede','MASCULINO',1,11,'fx50a54',229.402954522501,55,4.17096280950002);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (10,'Cristalina: Campos Lindos/Marajó','FEMININO',2,11,'fx50a54',186.671522515084,38,4.91240848723906);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (10,'Cristalina: Campos Lindos/Marajó','MASCULINO',1,11,'fx50a54',194.986710257225,32,6.09333469553827);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (9,'Cristalina: Sede','FEMININO',2,11,'fx50a54',953.912872403938,38,25.1029703264194);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (9,'Cristalina: Sede','MASCULINO',1,11,'fx50a54',996.404434677676,45,22.142320770615);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (11,'Formosa','FEMININO',2,11,'fx50a54',2861.53148923534,72,39.7434929060464);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (11,'Formosa','MASCULINO',1,11,'fx50a54',2802.80782491463,70,40.0401117844946);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (13,'Luziânia: Jardim Ingá','FEMININO',2,11,'fx50a54',1905.78374651791,51,37.3683087552532);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (13,'Luziânia: Jardim Ingá','MASCULINO',1,11,'fx50a54',1810.11552958908,38,47.6346191997126);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (12,'Luziânia: Sede','FEMININO',2,11,'fx50a54',2992.90810893216,72,41.5681681796133);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (12,'Luziânia: Sede','MASCULINO',1,11,'fx50a54',2842.66746240732,76,37.4035192422015);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (14,'Novo Gama','FEMININO',2,11,'fx50a54',2761.60781613695,79,34.9570609637589);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (14,'Novo Gama','MASCULINO',1,11,'fx50a54',2656.52070114247,75,35.4202760152329);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (5,'Padre Bernardo: Monte Alto','FEMININO',2,11,'fx50a54',263.708449731459,49,5.38180509656039);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (5,'Padre Bernardo: Monte Alto','MASCULINO',1,11,'fx50a54',268.097904559479,36,7.44716401554108);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (4,'Padre Bernardo: Sede','FEMININO',2,11,'fx50a54',340.709661113016,42,8.11213478840513);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (4,'Padre Bernardo: Sede','MASCULINO',1,11,'fx50a54',346.380809187521,43,8.05536765552375);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (6,'Planaltina','FEMININO',2,11,'fx50a54',2099.83191153191,58,36.2039984746881);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (6,'Planaltina','MASCULINO',1,11,'fx50a54',1983.06343422503,65,30.5086682188466);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (17,'Santo Antônio do Descoberto','FEMININO',2,11,'fx50a54',1612.01527035383,65,24.8002349285205);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (17,'Santo Antônio do Descoberto','MASCULINO',1,11,'fx50a54',1500.60531913432,39,38.4770594649825);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (7,'Valparaíso de Goiás','FEMININO',2,11,'fx50a54',4385.25827847311,65,67.4655119765093);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (7,'Valparaíso de Goiás','MASCULINO',1,11,'fx50a54',3834.74887464025,66,58.1022556763675);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (1,'Águas Lindas de Goiás','FEMININO',2,12,'fx55a59',3324.23755952446,65,51.1421163003763);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (1,'Águas Lindas de Goiás','MASCULINO',1,12,'fx55a59',3331.29172599996,59,56.462571627118);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (8,'Alexânia','FEMININO',2,12,'fx55a59',494.574345963003,46,10.751616216587);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (8,'Alexânia','MASCULINO',1,12,'fx55a59',494.183343688792,38,13.0048248339156);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (16,'Cidade Ocidental: Jardim ABC','FEMININO',2,12,'fx55a59',240.874449449285,26,9.26440190189557);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (16,'Cidade Ocidental: Jardim ABC','MASCULINO',1,12,'fx55a59',207.284987012987,30,6.90949956709957);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (15,'Cidade Ocidental: Sede','FEMININO',2,12,'fx55a59',1076.98965658392,58,18.5687871824814);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (15,'Cidade Ocidental: Sede','MASCULINO',1,12,'fx55a59',926.805593073593,45,20.5956798460798);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (2,'Cocalzinho de Goiás: Girassol/Edilândia','FEMININO',2,12,'fx55a59',185.201474944304,34,5.44710220424424);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (2,'Cocalzinho de Goiás: Girassol/Edilândia','MASCULINO',1,12,'fx55a59',182.526289811377,22,8.29664953688076);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (3,'Cocalzinho de Goiás: Sede','FEMININO',2,12,'fx55a59',191.27912882816,51,3.75057115349333);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (3,'Cocalzinho de Goiás: Sede','MASCULINO',1,12,'fx55a59',188.516153631368,39,4.83374752900943);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (10,'Cristalina: Campos Lindos/Marajó','FEMININO',2,12,'fx55a59',150.107538901238,20,7.50537694506192);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (10,'Cristalina: Campos Lindos/Marajó','MASCULINO',1,12,'fx55a59',156.285070879644,36,4.34125196887901);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (9,'Cristalina: Sede','FEMININO',2,12,'fx55a59',767.066725944744,36,21.3074090540207);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (9,'Cristalina: Sede','MASCULINO',1,12,'fx55a59',798.634622292792,35,22.8181320655083);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (11,'Formosa','FEMININO',2,12,'fx55a59',2287.40061731255,83,27.5590435820789);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (11,'Formosa','MASCULINO',1,12,'fx55a59',2293.72509921307,46,49.8635891133275);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (13,'Luziânia: Jardim Ingá','FEMININO',2,12,'fx55a59',1454.45612005405,33,44.0744278804258);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (13,'Luziânia: Jardim Ingá','MASCULINO',1,12,'fx55a59',1369.71239584921,19,72.090126097327);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (12,'Luziânia: Sede','FEMININO',2,12,'fx55a59',2284.12773681658,64,35.689495887759);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (12,'Luziânia: Sede','MASCULINO',1,12,'fx55a59',2151.04328806043,46,46.7618106100093);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (14,'Novo Gama','FEMININO',2,12,'fx55a59',1968.1238763925,60,32.8020646065416);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (14,'Novo Gama','MASCULINO',1,12,'fx55a59',1802.69849183187,53,34.0131790911673);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (5,'Padre Bernardo: Monte Alto','FEMININO',2,12,'fx55a59',210.743475671352,34,6.19833751974564);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (5,'Padre Bernardo: Monte Alto','MASCULINO',1,12,'fx55a59',216.99101094732,39,5.56387207557232);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (4,'Padre Bernardo: Sede','FEMININO',2,12,'fx55a59',272.279247217461,39,6.98151915942207);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (4,'Padre Bernardo: Sede','MASCULINO',1,12,'fx55a59',280.351023563021,37,7.57705469089247);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (6,'Planaltina','FEMININO',2,12,'fx55a59',1630.92984270113,40,40.7732460675283);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (6,'Planaltina','MASCULINO',1,12,'fx55a59',1469.42849814648,35,41.9836713756137);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (17,'Santo Antônio do Descoberto','FEMININO',2,12,'fx55a59',1183.57136447956,48,24.6577367599908);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (17,'Santo Antônio do Descoberto','MASCULINO',1,12,'fx55a59',1050.33685949845,45,23.3408190999656);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (7,'Valparaíso de Goiás','FEMININO',2,12,'fx55a59',3258.04211605649,56,58.1793235010087);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (7,'Valparaíso de Goiás','MASCULINO',1,12,'fx55a59',2850.33388206947,46,61.9637800449886);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (1,'Águas Lindas de Goiás','FEMININO',2,13,'fx60a64',2049.23735552643,51,40.1811246181652);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (1,'Águas Lindas de Goiás','MASCULINO',1,13,'fx60a64',2194.00632248257,42,52.2382457733945);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (8,'Alexânia','FEMININO',2,13,'fx60a64',413.11978070729,40,10.3279945176823);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (8,'Alexânia','MASCULINO',1,13,'fx60a64',392.499396235038,34,11.5440998892658);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (16,'Cidade Ocidental: Jardim ABC','FEMININO',2,13,'fx60a64',181.802133157981,14,12.9858666541415);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (16,'Cidade Ocidental: Jardim ABC','MASCULINO',1,13,'fx60a64',154.581672069702,9,17.1757413410781);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (15,'Cidade Ocidental: Sede','FEMININO',2,13,'fx60a64',812.867522494383,50,16.2573504498877);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (15,'Cidade Ocidental: Sede','MASCULINO',1,13,'fx60a64',691.160321475149,49,14.1053126831663);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (2,'Cocalzinho de Goiás: Girassol/Edilândia','FEMININO',2,13,'fx60a64',156.637680424774,24,6.5265700176989);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (2,'Cocalzinho de Goiás: Girassol/Edilândia','MASCULINO',1,13,'fx60a64',151.726138541512,27,5.61948661264859);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (3,'Cocalzinho de Goiás: Sede','FEMININO',2,13,'fx60a64',161.777972137235,52,3.11111484879297);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (3,'Cocalzinho de Goiás: Sede','MASCULINO',1,13,'fx60a64',156.705250913412,31,5.05500809398102);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (10,'Cristalina: Campos Lindos/Marajó','FEMININO',2,13,'fx60a64',115.079455217529,22,5.23088432806952);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (10,'Cristalina: Campos Lindos/Marajó','MASCULINO',1,13,'fx60a64',117.663418323277,23,5.11580079666423);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (9,'Cristalina: Sede','FEMININO',2,13,'fx60a64',588.069204140997,50,11.7613840828199);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (9,'Cristalina: Sede','MASCULINO',1,13,'fx60a64',601.273551730708,38,15.8229882034397);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (11,'Formosa','FEMININO',2,13,'fx60a64',1728.62502794358,62,27.8810488377996);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (11,'Formosa','MASCULINO',1,13,'fx60a64',1718.61421588716,64,26.8533471232368);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (13,'Luziânia: Jardim Ingá','FEMININO',2,13,'fx60a64',1060.53394778602,30,35.3511315928672);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (13,'Luziânia: Jardim Ingá','MASCULINO',1,13,'fx60a64',983.188440336775,33,29.7935891011144);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (12,'Luziânia: Sede','FEMININO',2,13,'fx60a64',1665.49885732105,66,25.234831171531);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (12,'Luziânia: Sede','MASCULINO',1,13,'fx60a64',1544.03282170328,55,28.0733240309687);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (14,'Novo Gama','FEMININO',2,13,'fx60a64',1389.58861266327,48,28.9497627638182);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (14,'Novo Gama','MASCULINO',1,13,'fx60a64',1240.03959230523,41,30.2448681050056);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (5,'Padre Bernardo: Monte Alto','FEMININO',2,13,'fx60a64',164.300083007656,23,7.1434818698981);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (5,'Padre Bernardo: Monte Alto','MASCULINO',1,13,'fx60a64',176.73639611473,26,6.79755369672038);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (4,'Padre Bernardo: Sede','FEMININO',2,13,'fx60a64',212.274675534225,35,6.06499072954928);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (4,'Padre Bernardo: Sede','MASCULINO',1,13,'fx60a64',228.342313975546,35,6.52406611358702);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (6,'Planaltina','FEMININO',2,13,'fx60a64',1232.26397772434,40,30.8065994431086);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (6,'Planaltina','MASCULINO',1,13,'fx60a64',1099.96217272818,32,34.3738178977557);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (17,'Santo Antônio do Descoberto','FEMININO',2,13,'fx60a64',850.087121779457,43,19.7694679483595);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (17,'Santo Antônio do Descoberto','MASCULINO',1,13,'fx60a64',794.051853211955,36,22.0569959225543);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (7,'Valparaíso de Goiás','FEMININO',2,13,'fx60a64',2221.79670437052,54,41.144383414269);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (7,'Valparaíso de Goiás','MASCULINO',1,13,'fx60a64',1989.95963536577,38,52.3673588254151);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (1,'Águas Lindas de Goiás','FEMININO',2,14,'fx65a69',1375.30518608335,30,45.8435062027782);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (1,'Águas Lindas de Goiás','MASCULINO',1,14,'fx65a69',1450.14576399585,28,51.7909201427089);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (8,'Alexânia','FEMININO',2,14,'fx65a69',323.576069771491,32,10.1117521803591);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (8,'Alexânia','MASCULINO',1,14,'fx65a69',308.765238835691,24,12.8652182848205);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (16,'Cidade Ocidental: Jardim ABC','FEMININO',2,14,'fx65a69',124.92469735328,10,12.492469735328);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (16,'Cidade Ocidental: Jardim ABC','MASCULINO',1,14,'fx65a69',101.502002959066,18,5.63900016439257);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (15,'Cidade Ocidental: Sede','FEMININO',2,14,'fx65a69',558.559063482931,44,12.6945241700666);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (15,'Cidade Ocidental: Sede','MASCULINO',1,14,'fx65a69',453.832307907283,38,11.9429554712443);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (2,'Cocalzinho de Goiás: Girassol/Edilândia','FEMININO',2,14,'fx65a69',116.919984538839,21,5.56761831137326);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (2,'Cocalzinho de Goiás: Girassol/Edilândia','MASCULINO',1,14,'fx65a69',117.435788073667,26,4.51676107975642);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (3,'Cocalzinho de Goiás: Sede','FEMININO',2,14,'fx65a69',120.756882697163,39,3.09633032556829);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (3,'Cocalzinho de Goiás: Sede','MASCULINO',1,14,'fx65a69',121.289613069954,30,4.0429871023318);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (10,'Cristalina: Campos Lindos/Marajó','FEMININO',2,14,'fx65a69',82.8747342394411,21,3.94641591616386);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (10,'Cristalina: Campos Lindos/Marajó','MASCULINO',1,14,'fx65a69',84.2693347411877,20,4.21346673705938);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (9,'Cristalina: Sede','FEMININO',2,14,'fx65a69',423.499389317244,32,13.2343559161639);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (9,'Cristalina: Sede','MASCULINO',1,14,'fx65a69',430.625957700857,32,13.4570611781518);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (11,'Formosa','FEMININO',2,14,'fx65a69',1259.82634821084,61,20.652890954276);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (11,'Formosa','MASCULINO',1,14,'fx65a69',1205.13516080178,27,44.6346355852512);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (13,'Luziânia: Jardim Ingá','FEMININO',2,14,'fx65a69',761.626480943802,23,33.1141948236435);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (13,'Luziânia: Jardim Ingá','MASCULINO',1,14,'fx65a69',704.476917677223,19,37.0777325093275);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (12,'Luziânia: Sede','FEMININO',2,14,'fx65a69',1196.08432748943,33,36.2449796208919);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (12,'Luziânia: Sede','MASCULINO',1,14,'fx65a69',1106.33469475435,39,28.3675562757525);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (14,'Novo Gama','FEMININO',2,14,'fx65a69',1016.17112307364,44,23.0947982516736);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (14,'Novo Gama','MASCULINO',1,14,'fx65a69',861.4980039506,44,19.5795000897864);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (5,'Padre Bernardo: Monte Alto','FEMININO',2,14,'fx65a69',127.547621528968,25,5.10190486115873);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (5,'Padre Bernardo: Monte Alto','MASCULINO',1,14,'fx65a69',138.712933653297,30,4.62376445510989);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (4,'Padre Bernardo: Sede','FEMININO',2,14,'fx65a69',164.790726088447,26,6.33810484955565);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (4,'Padre Bernardo: Sede','MASCULINO',1,14,'fx65a69',179.21623924123,26,6.89293227850883);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (6,'Planaltina','FEMININO',2,14,'fx65a69',906.380476381792,36,25.1772354550498);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (6,'Planaltina','MASCULINO',1,14,'fx65a69',801.67831622082,25,32.0671326488328);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (17,'Santo Antônio do Descoberto','FEMININO',2,14,'fx65a69',622.153457746479,32,19.4422955545775);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (17,'Santo Antônio do Descoberto','MASCULINO',1,14,'fx65a69',552.947013191343,41,13.486512516862);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (7,'Valparaíso de Goiás','FEMININO',2,14,'fx65a69',1452.55981786137,32,45.3924943081677);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (7,'Valparaíso de Goiás','MASCULINO',1,14,'fx65a69',1300.58421854851,29,44.8477316740867);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (1,'Águas Lindas de Goiás','FEMININO',2,15,'fx70m',1874.1523053988,61,30.7238082852263);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (1,'Águas Lindas de Goiás','MASCULINO',1,15,'fx70m',1893.41805772753,45,42.0759568383895);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (8,'Alexânia','FEMININO',2,15,'fx70m',582.713180063112,62,9.39859967843729);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (8,'Alexânia','MASCULINO',1,15,'fx70m',565.831340673558,70,8.08330486676512);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (16,'Cidade Ocidental: Jardim ABC','FEMININO',2,15,'fx70m',180.041317244781,26,6.92466604787617);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (16,'Cidade Ocidental: Jardim ABC','MASCULINO',1,15,'fx70m',135.120977774125,19,7.11163040916445);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (15,'Cidade Ocidental: Sede','FEMININO',2,15,'fx70m',804.994622192997,35,22.9998463483713);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (15,'Cidade Ocidental: Sede','MASCULINO',1,15,'fx70m',604.148326163077,28,21.5767259343956);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (2,'Cocalzinho de Goiás: Girassol/Edilândia','FEMININO',2,15,'fx70m',177.398673857122,34,5.21760805462123);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (2,'Cocalzinho de Goiás: Girassol/Edilândia','MASCULINO',1,15,'fx70m',192.141248251894,24,8.0058853438289);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (3,'Cocalzinho de Goiás: Sede','FEMININO',2,15,'fx70m',183.220267553839,52,3.52346668372768);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (3,'Cocalzinho de Goiás: Sede','MASCULINO',1,15,'fx70m',198.446640819843,58,3.42149380723867);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (10,'Cristalina: Campos Lindos/Marajó','FEMININO',2,15,'fx70m',124.144018136551,19,6.53389569139744);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (10,'Cristalina: Campos Lindos/Marajó','MASCULINO',1,15,'fx70m',120.909612398222,22,5.49589147264644);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (9,'Cristalina: Sede','FEMININO',2,15,'fx70m',634.390159446173,62,10.232099345906);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (9,'Cristalina: Sede','MASCULINO',1,15,'fx70m',617.861975463957,61,10.1288848436714);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (11,'Formosa','FEMININO',2,15,'fx70m',2226.06341219302,119,18.7064152285128);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (11,'Formosa','MASCULINO',1,15,'fx70m',1927.85955792012,84,22.9507090228586);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (13,'Luziânia: Jardim Ingá','FEMININO',2,15,'fx70m',1244.80924110249,29,42.924456589741);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (13,'Luziânia: Jardim Ingá','MASCULINO',1,15,'fx70m',1092.41212580209,35,31.2117750229169);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (12,'Luziânia: Sede','FEMININO',2,15,'fx70m',1954.89109327143,86,22.7312917822259);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (12,'Luziânia: Sede','MASCULINO',1,15,'fx70m',1715.56144057931,83,20.6694149467387);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (14,'Novo Gama','FEMININO',2,15,'fx70m',1486.67648944371,48,30.9724268634107);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (14,'Novo Gama','MASCULINO',1,15,'fx70m',1282.23288640958,55,23.3133252074469);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (5,'Padre Bernardo: Monte Alto','FEMININO',2,15,'fx70m',224.923909482345,39,5.76727973031654);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (5,'Padre Bernardo: Monte Alto','MASCULINO',1,15,'fx70m',237.479283574449,36,6.59664676595691);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (4,'Padre Bernardo: Sede','FEMININO',2,15,'fx70m',290.600278656154,56,5.18929069028846);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (4,'Padre Bernardo: Sede','MASCULINO',1,15,'fx70m',306.821743142498,48,6.39211964880204);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (6,'Planaltina','FEMININO',2,15,'fx70m',1368.11180945697,50,27.3622361891394);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (6,'Planaltina','MASCULINO',1,15,'fx70m',1261.38873989714,41,30.7655790218814);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (17,'Santo Antônio do Descoberto','FEMININO',2,15,'fx70m',1056.51065833734,44,24.0116058713032);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (17,'Santo Antônio do Descoberto','MASCULINO',1,15,'fx70m',887.89196161113,50,17.7578392322226);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (7,'Valparaíso de Goiás','FEMININO',2,15,'fx70m',2165.41051805814,36,60.1502921682817);
insert into pmad2018.tmp (distrito,distrito_nome,dc_sexo,cd_sexo,faixa_idade,fx_idade,nsao,nzinho,fator) values (7,'Valparaíso de Goiás','MASCULINO',1,15,'fx70m',1669.26712111907,32,52.1645975349709);

ALTER TABLE pmad2018.dp_mor_1718 ALTER COLUMN pop_proj FLOAT;  

update m
set 
 m.fator_mun = t.fator,
 m.pop_proj = t.nsao
from pmad2018.dp_mor_1718 m,
     pmad2018.tmp t
where m.A01setor = t.distrito_nome
and m.D03 = t.cd_sexo
and case when m.d05 between 0 and 4 then 'fx0a4'
         when m.d05 between 5 and 9 then 'fx5a9'
         when m.d05 between 10 and 14 then 'fx10a14'
         when m.d05 between 15 and 19 then 'fx15a19'
         when m.d05 between 20 and 24 then 'fx20a24'
         when m.d05 between 25 and 29 then 'fx25a29'
         when m.d05 between 30 and 34 then 'fx30a34'
         when m.d05 between 35 and 39 then 'fx35a39'
         when m.d05 between 40 and 44 then 'fx40a44'
         when m.d05 between 45 and 49 then 'fx45a49'
         when m.d05 between 50 and 54 then 'fx50a54'
         when m.d05 between 55 and 59 then 'fx55a59'
         when m.d05 between 60 and 64 then 'fx60a64'
         when m.d05 between 65 and 69 then 'fx65a69'
         when m.d05 >= 70 then 'fx70m'
	     else null
	end = t.fx_idade;

select sum(t.pop_proj) as sum_pop_proj
from (select
       max(m.pop_proj) as pop_proj
      from pmad2018.dp_mor_1718 m,
           pmad2018.tmp t
      group by m.A01setor,
               m.D03,
               case when m.d05 between 0 and 4 then 'fx0a4'
                    when m.d05 between 5 and 9 then 'fx5a9'
                    when m.d05 between 10 and 14 then 'fx10a14'
                    when m.d05 between 15 and 19 then 'fx15a19'
                    when m.d05 between 20 and 24 then 'fx20a24'
                    when m.d05 between 25 and 29 then 'fx25a29'
                    when m.d05 between 30 and 34 then 'fx30a34'
                    when m.d05 between 35 and 39 then 'fx35a39'
                    when m.d05 between 40 and 44 then 'fx40a44'
                    when m.d05 between 45 and 49 then 'fx45a49'
                    when m.d05 between 50 and 54 then 'fx50a54'
                    when m.d05 between 55 and 59 then 'fx55a59'
                    when m.d05 between 60 and 64 then 'fx60a64'
                    when m.d05 between 65 and 69 then 'fx65a69'
                    when m.d05 >= 70 then 'fx70m'
           	     else null
           	 end) t;

select sum(fator_mun) from pmad2018.dp_mor_1718;

