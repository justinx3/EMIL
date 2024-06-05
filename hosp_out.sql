create table hospital (patient_id varchar(10),name varchar(25),age int, doctor varchar(20),patient_type varchar(15),consultcharge decimal,bloodtest_charge decimal,Xraycharge decimal,othercharges decimal,total decimal)
insert into hospital values (1,'Anu',34,'Felix','inpatient',100,50,100,0,250);
insert into hospital values (2,'Bably',45,'Rohit','outpatient',200,0,100,0,200);
insert into hospital values (3,'Chinnu',12,'Majeed','inpatient',300,00,100,0,300);
insert into hospital values (4,'Deepa',28,'Diju','outpatient',250,100,100,10,460);
insert into hospital values (5,'Francis',82,'Sreeni','inpatient',500,100,100,100,800);
insert into hospital values (6,'Ganga',34,'Felix','inpatient',100,0,0,0,100);
insert into hospital values (7,'Hareeh',45,'Rohit','outpatient',200,0,100,0,200);
insert into hospital values (8,'James',62,'Deepa','inpatient',300,50,100,0,450);
insert into hospital values (9,'Kiran',28,'Diju','outpatient',250,0,0,0,250);
insert into hospital values (10,'Leema',42,'Sreeni','inpatient',500,0,0,0,500);
select * from hospital;

do $$
declare
pid hospital.patient_id%type;
pn hospital.name%type;
ag hospital.age%type;
d hospital.doctor%type;
pt hospital.patient_type%type;
cc hospital.consultcharge%type;
bt hospital.bloodtest_charge%type;
xc hospital.xraycharge%type;
oc hospital.othercharges%type;
tot hospital.total%type;
cr cursor for select * from hospital where patient_type='outpatient' order by name asc;
begin
open cr;
raise notice 'Patient Id    Name    Age    Doctor    Patient_Type    CC    BT    XC    OC    TOT';
loop
fetch cr into pid,pn,ag,d,pt,cc,bt,xc,oc,tot;
exit when not found;
raise notice '%    %    %    %    %    %    %    %    %    %',pid,pn,ag,d,pt,cc,bt,xc,oc,tot;
end loop;
close cr;
end $$;


