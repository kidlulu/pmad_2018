use db_codeplan;

--select count(1) as qtd from pmad2018.dp_dom_1718_imput_bkp;
--10.878

--select count(1) as qtd from pmad2018.dp_mor_1718_bkp;
--35.011

use DB_CODEPLAN;

SET QUOTED_IDENTIFIER ON
GO

IF OBJECT_ID('pmad2018.tmp', 'U') IS NOT NULL DROP TABLE pmad2018.tmp
go

CREATE TABLE pmad2018.tmp(
  distrito smallint null,
  distrito_nome nchar(27) null,
  dc_sexo varchar(9) null,
  cd_sexo smallint null,
  faixa_idade smallint null,
  fx_idade nchar(7) null,
  nsao float null,
  nzinho float null,
  fator float null) ON [PRIMARY]
GO

BULK INSERT pmad2018.tmp FROM '\\10.73.53.224\carga\pmad1718\fator_pmad20182017_mor_19102020.txt' WITH (FIELDTERMINATOR=';',FIRSTROW=2, codepage=1252)
GO

IF OBJECT_ID('pmad2018.dp_mor_1718', 'U') IS NOT NULL DROP TABLE pmad2018.dp_mor_1718; 

select 
t1.referencia, t1.municipio, t1.A01setor, t1.A01nficha_ant, t1.A01nficha, t1.A01nPessoas as A01npessoas, t1.D01, t1.D02, 
t1.D06, t1.D03, t1.D04, t1.D05, t1.D07, t1.D08, t1.D09, t1.D10, t1.D11, t1.D12, t1.D13, t1.D14, 
t1.D15, t1.D16, t1.D17, t1.D18, t1.D19, t1.D20, t1.D21, t1.D22, t1.E01, t1.E02, t1.E03, t1.E04, 
t1.E05, t1.E06, t1.E07, t1.E08, t1.E09, t1.E10, t1.E11, t1.E12, t1.E13, t1.E14, t1.E15, t2.nsao as pop_proj, 
t2.fator as fator_mun,
concat(case when ltrim(rtrim(t2.distrito_nome)) = 'AGUAS LINDAS DE GOIAS' then '01'
            when ltrim(rtrim(t2.distrito_nome)) = 'ALEXANIA' then '02'
            when ltrim(rtrim(t2.distrito_nome)) = 'CIDADE OCID_J ABC' then '04'
            when ltrim(rtrim(t2.distrito_nome)) = 'CIDADE OCID_SEDE' then '03'
            when ltrim(rtrim(t2.distrito_nome)) = 'COCALZ de GOIAS_GIR/EDI' then '08'
            when ltrim(rtrim(t2.distrito_nome)) = 'COCALZ de GOIAS_SEDE' then '07'
            when ltrim(rtrim(t2.distrito_nome)) = 'CRISTALINA_CAM LIND' then '06'
            when ltrim(rtrim(t2.distrito_nome)) = 'CRISTALINA_SEDE' then '05'
            when ltrim(rtrim(t2.distrito_nome)) = 'FORMOSA' then '09'
            when ltrim(rtrim(t2.distrito_nome)) = 'LUZIANIA_J INGA' then '11'
            when ltrim(rtrim(t2.distrito_nome)) = 'LUZIANIA_SEDE' then '10'
            when ltrim(rtrim(t2.distrito_nome)) = 'NOVO GAMA' then '12'
            when ltrim(rtrim(t2.distrito_nome)) = 'Pe BERNARDO_M ALTO' then '14'
            when ltrim(rtrim(t2.distrito_nome)) = 'Pe BERNARDO_SEDE' then '13'
            when ltrim(rtrim(t2.distrito_nome)) = 'PLANALTINA' then '15'
            when ltrim(rtrim(t2.distrito_nome)) = 'SANTO ANTONIO DO DESCOBERTO' then '16'
            when ltrim(rtrim(t2.distrito_nome)) = 'VALPARAISO DE GOIAS' then '17'
            else null
       end,
	   cast(t1.D03 as nchar(1)),
       case when t1.d05 between 0 and 4 then '01'
	        when t1.d05 between 5 and 9 then '02'
            when t1.d05 between 10 and 14 then '03'
            when t1.d05 between 15 and 19 then '04'
            when t1.d05 between 20 and 24 then '05'
            when t1.d05 between 25 and 29 then '06'
            when t1.d05 between 30 and 34 then '07'
            when t1.d05 between 35 and 39 then '08'
            when t1.d05 between 40 and 44 then '09'
            when t1.d05 between 45 and 49 then '10'
            when t1.d05 between 50 and 54 then '11'
            when t1.d05 between 55 and 59 then '12'
            when t1.d05 between 60 and 64 then '13'
            when t1.d05 between 65 and 69 then '14'
            when t1.d05 >= 70 then '15'
	        else null
	   end) as pos_estrato
into pmad2018.dp_mor_1718 
from pmad2018.dp_mor_1718_bkp t1,
     pmad2018.tmp t2
where ltrim(rtrim(t1.A01setor)) = case when ltrim(rtrim(t2.distrito_nome)) = 'AGUAS LINDAS DE GOIAS' then 'Águas Lindas de Goiás'
                                       when ltrim(rtrim(t2.distrito_nome)) = 'ALEXANIA' then 'Alexânia'
                                       when ltrim(rtrim(t2.distrito_nome)) = 'CIDADE OCID_J ABC' then 'Cidade Ocidental: Jardim ABC'
                                       when ltrim(rtrim(t2.distrito_nome)) = 'CIDADE OCID_SEDE' then 'Cidade Ocidental: Sede'
                                       when ltrim(rtrim(t2.distrito_nome)) = 'COCALZ de GOIAS_GIR/EDI' then 'Cocalzinho de Goiás: Girassol/Edilândia'
                                       when ltrim(rtrim(t2.distrito_nome)) = 'COCALZ de GOIAS_SEDE' then 'Cocalzinho de Goiás: Sede'
                                       when ltrim(rtrim(t2.distrito_nome)) = 'CRISTALINA_CAM LIND' then 'Cristalina: Campos Lindos/Marajó'
                                       when ltrim(rtrim(t2.distrito_nome)) = 'CRISTALINA_SEDE' then 'Cristalina: Sede'
                                       when ltrim(rtrim(t2.distrito_nome)) = 'FORMOSA' then 'Formosa'
                                       when ltrim(rtrim(t2.distrito_nome)) = 'LUZIANIA_J INGA' then 'Luziânia: Jardim Ingá'
                                       when ltrim(rtrim(t2.distrito_nome)) = 'LUZIANIA_SEDE' then 'Luziânia: Sede'
                                       when ltrim(rtrim(t2.distrito_nome)) = 'NOVO GAMA' then 'Novo Gama'
                                       when ltrim(rtrim(t2.distrito_nome)) = 'Pe BERNARDO_M ALTO' then 'Padre Bernardo: Monte Alto'
                                       when ltrim(rtrim(t2.distrito_nome)) = 'Pe BERNARDO_SEDE' then 'Padre Bernardo: Sede'
                                       when ltrim(rtrim(t2.distrito_nome)) = 'PLANALTINA' then 'Planaltina'
                                       when ltrim(rtrim(t2.distrito_nome)) = 'SANTO ANTONIO DO DESCOBERTO' then 'Santo Antônio do Descoberto'
                                       when ltrim(rtrim(t2.distrito_nome)) = 'VALPARAISO DE GOIAS' then 'Valparaíso de Goiás'
									   else null
								  end
and t1.D03 = cast(t2.cd_sexo as smallint)
and case when t1.d05 between 0 and 4 then 'fx0a4'
         when t1.d05 between 5 and 9 then 'fx5a9'
         when t1.d05 between 10 and 14 then 'fx10a14'
         when t1.d05 between 15 and 19 then 'fx15a19'
         when t1.d05 between 20 and 24 then 'fx20a24'
         when t1.d05 between 25 and 29 then 'fx25a29'
         when t1.d05 between 30 and 34 then 'fx30a34'
         when t1.d05 between 35 and 39 then 'fx35a39'
         when t1.d05 between 40 and 44 then 'fx40a44'
         when t1.d05 between 45 and 49 then 'fx45a49'
         when t1.d05 between 50 and 54 then 'fx50a54'
         when t1.d05 between 55 and 59 then 'fx55a59'
         when t1.d05 between 60 and 64 then 'fx60a64'
         when t1.d05 between 65 and 69 then 'fx65a69'
         when t1.d05 >= 70 then 'fx70m'
	     else null
	end = ltrim(rtrim(t2.fx_idade));

IF OBJECT_ID('pmad2018.dp_dom_1718_imput', 'U') IS NOT NULL DROP TABLE pmad2018.dp_dom_1718_imput; 

select 
t1.referencia, t1.municipio, t1.A01setor, t1.setorcensitario, t1.A01nficha_ant, t1.A01nficha, t1.datavisita, 
t1.B01, t1.B02, t1.B03, t1.B04, t1.B05, t1.B06, t1.B07, t1.B08, t1.B09, t1.B10, t1.B11, t1.B12, t1.B13, t1.B14, t1.B15, 
t1.B16, t1.B17, t1.B18, t1.B191, t1.B192, t1.B193, t1.B194, t1.B195, t1.B201, t1.B202, t1.B203, t1.B204, t1.B205, t1.B206, 
t1.B211, t1.B212, t1.B213, t1.B214, t1.B215, t1.B216, t1.B217, t1.B218, t1.B22, t1.B231, t1.B232, t1.B233, t1.B234, t1.C011, 
t1.C012, t1.C013, t1.C014, t1.C015, t1.C016, t1.C017, t1.C018, t1.C019, t1.C021, t1.C022, t1.C023, t1.C031, t1.C032, t1.C033, 
t1.C034, t1.C0401, t1.C0402, t1.C0403, t1.C0404, t1.C0405, t1.C0406, t1.C0407, t1.C0408, t1.C0409, t1.C0410, t1.C0411, t1.C0412, 
t1.C0413, t1.C0414, t1.C0415, t1.C0416, t1.C0417, t1.C0418, t1.C0419, t1.C0420, t1.C0421, t1.C0422, t1.C051, t1.C052, t1.C053, 
t1.C061, t1.C062, t1.C063, t1.C064, t1.C065, t1.C066, t1.C07, t1.C08, t1.C09, t1.C101, t1.C102, t1.C103, t1.C104, t1.C0401_imput, 
t1.C0402_imput, t1.C0403_imput, t1.C0404_imput, t1.C0405_imput, t1.C0406_imput, t1.C0407_imput, t1.C0408_imput, t1.C0409_imput, 
t1.C0410_imput, t1.C0411_imput, t1.C0412_imput, t1.C0413_imput, t1.C0414_imput, t1.C0415_imput, t1.C0416_imput, t1.C0417_imput, 
t1.C0418_imput, t1.C0419_imput, t1.C0420_imput, t1.C0421_imput, t1.C0422_imput, t2.fator_mun, 
case when ltrim(rtrim(t1.A01setor)) = 'Águas Lindas de Goiás' then 41.4826087
     when ltrim(rtrim(t1.A01setor)) = 'Alexânia' then 13.42
     when ltrim(rtrim(t1.A01setor)) = 'Cidade Ocidental: Jardim ABC' then 5.942
     when ltrim(rtrim(t1.A01setor)) = 'Cidade Ocidental: Sede' then 23.27166667
     when ltrim(rtrim(t1.A01setor)) = 'Cocalzinho de Goiás: Girassol/Edilândia' then 3.283333333
     when ltrim(rtrim(t1.A01setor)) = 'Cocalzinho de Goiás: Sede' then 3.724242424
     when ltrim(rtrim(t1.A01setor)) = 'Cristalina: Campos Lindos/Marajó' then 5.038
     when ltrim(rtrim(t1.A01setor)) = 'Cristalina: Sede' then 17.19272727
     when ltrim(rtrim(t1.A01setor)) = 'Formosa' then 32.49
     when ltrim(rtrim(t1.A01setor)) = 'Luziânia: Jardim Ingá' then 39.98795181
     when ltrim(rtrim(t1.A01setor)) = 'Luziânia: Sede' then 39.89897698
     when ltrim(rtrim(t1.A01setor)) = 'Novo Gama' then 34.4675
     when ltrim(rtrim(t1.A01setor)) = 'Padre Bernardo: Monte Alto' then 4.534848485
     when ltrim(rtrim(t1.A01setor)) = 'Padre Bernardo: Sede' then 5.510606061
     when ltrim(rtrim(t1.A01setor)) = 'Planaltina' then 31.868
     when ltrim(rtrim(t1.A01setor)) = 'Santo Antônio do Descoberto' then 27.02153846
     when ltrim(rtrim(t1.A01setor)) = 'Valparaíso de Goiás' then 35.82272727
   else null
end as peso_pre
into pmad2018.dp_dom_1718_imput
from pmad2018.dp_dom_1718_imput_bkp t1,
     pmad2018.dp_mor_1718 t2
where t1.A01nficha = t2.A01nficha
and t2.D02 = 1
     


select 'Domicilios' as coluna, sum(fator_mun) as sum_fator from pmad2018.dp_dom_1718_imput
union all
select 'Moradores' as coluna, sum(fator_mun) as sum_fator from pmad2018.dp_mor_1718;

grant select on pmad2018.dp_dom_1718_imput to [11711];

grant select on pmad2018.dp_mor_1718 to [11711];

grant select on pmad2018.dp_dom_1718_imput to [36692];

grant select on pmad2018.dp_mor_1718 to [36692];







grant select on pmad2018.dp_dom_1718_imput_bkp to [11711];

grant select on pmad2018.dp_mor_1718_bkp to [11711];

grant select on pmad2018.dp_dom_1718_imput_bkp to [36692];

grant select on pmad2018.dp_mor_1718_bkp to [36692];

IF OBJECT_ID('pmad2018.tmp', 'U') IS NOT NULL DROP TABLE pmad2018.tmp
go
