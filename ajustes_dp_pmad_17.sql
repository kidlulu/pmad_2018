IF OBJECT_ID('pmad.dom20172018', 'U') IS NOT NULL DROP TABLE pmad.dom20172018; 

select 
d.municipio, d.A01setor, d.A01nficha, d.A01nPessoas, d.datavisita, d.B01, d.B02, d.B03, d.B04, d.B05, d.B06, 
d.B07, d.B08, d.B09, d.B10, d.B11, d.B12, d.B13, d.B14, d.B15, d.B16, d.B17, d.B18, d.B191, d.B192, d.B193, 
d.B194, d.B195, d.B201, d.B202, d.B203, d.B204, d.B205, d.B206, d.B211, d.B212, d.B213, d.B214, d.B215, d.B216, 
d.B217, d.B218, d.B22, d.B231, d.B232, d.B233, d.B234, d.C011, d.C012, d.C013, d.C014, d.C015, d.C016, d.C017, 
d.C018, d.C019, d.C021, d.C022, d.C023, d.C031, d.C032, d.C033, d.C034, d.C0401, d.C0402, d.C0403, d.C0404, d.C0405, 
d.C0406, d.C0407, d.C0408, d.C0409, d.C0410, d.C0411, d.C0412, d.C0413, d.C0414, d.C0415, d.C0416, d.C0417, d.C0418, 
d.C0419, d.C0420, d.C0421, d.C0422, d.C051, d.C052, d.C053, d.C061, d.C062, d.C063, d.C064, d.C065, d.C066, d.C07, 
d.C08, d.C09, d.C101, d.C102, d.C103, d.C104, d.pop_proj, d.FATOR_MUN
into pmad.dom20172018
from pmad2018.dp_dom_1718_imput_bkp d;

IF OBJECT_ID('pmad.mor20172018', 'U') IS NOT NULL DROP TABLE pmad.mor20172018; 

select 
m.referencia, m.municipio, m.A01setor, m.A01nficha, m.A01nPessoas, m.D02, m.D06, m.D03, m.D04, m.D05, m.D07, m.D08, m.D09, m.D10, m.D11, m.D12, 
m.D13, m.D14, m.D15, m.D16, m.D17, m.D18, m.D19, m.D20, m.D21, m.D22, m.E01, m.E02, m.E03, m.E04, m.E05, m.E06, m.E07, m.E08, m.E09, m.E10, m.E11, 
m.E12, m.E13, m.E14, m.E15, d.pop_proj, d.FATOR_MUN
into pmad.mor20172018
from pmad2018.dp_dom_1718_imput_bkp d,
     pmad2018.dp_mor_1718_bkp m
where d.A01nficha = m.A01nficha;

--1.114.141
--345.015
select sum(fator_mun) from pmad.dom20172018
union
select sum(fator_mun) from pmad.mor20172018;

update pmad.mor20172018 set E14 = case when E06 in (1,3) and E08 in (1,5,13) and E14=0 then 3 
                                       when E06 in (1,3) and E08=4 and E14=0 then 2
									   when E06 in (1,3) and E08=12 and E14=0 then 1
                                       when E06 in (1,3) and E08 in (2,3,6,7,8,9,10,11,14,88) and E14=0 then 88
									   else E14 end;

update pmad.mor20172018 set E14 = 99 where E06 not in (1,3);

select referencia, E06, E08, E14, count(1) from  pmad.mor20172018 group by referencia, E06, E08, E14 order by referencia, E14, E08, E06;

update pmad2018.dp_mor_1718 set E14 = case when E06 in (1,3) and E08 in (1,5,13) and E14=0 then 3 
                                           when E06 in (1,3) and E08=4 and E14=0 then 2
									       when E06 in (1,3) and E08=12 and E14=0 then 1
                                           when E06 in (1,3) and E08 in (2,3,6,7,8,9,10,11,14,88) and E14=0 then 88
									       else E14 end;

update pmad2018.dp_mor_1718 set E14 = 99 where E06 not in (1,3) ;

select referencia, E06, E08, E14, count(1) from  pmad2018.dp_mor_1718 group by referencia, E06, E08, E14 order by referencia, E14, E08, E06;

