create table employee2(ename varchar(25)primary key,city varchar(20));
create table company(cname varchar(25)primary key,city varchar(25));
create table works(ename varchar references employee2(ename),cname varchar(25)references company(cname),salary bigint);
create table manage(ename varchar(25)references employee2(ename),mname varchar(25));
insert into employee2 values('Bala','tsr');
insert into employee2 values('Jithu','ekm');
insert into employee2 values('Sooraj','ekm');
insert into employee2 values('Jithin','tvm');
insert into employee2 values('Gautham','tsr');
select * from employee2;
insert into company values('infosys','ekm');
insert into company values('wipro','tvm');
insert into company values('tvs','tsr');
select * from company;
insert into works values('Bala','infosys',60000);
insert into works values('Jithu','wipro',80000);
insert into works values('Sooraj','infosys',95000);
insert into works values('Jithin','wipro',55000);
insert into works values('Gautham','wipro',45000);
select * from works;
insert into manage values('Bala','John');
insert into manage values('Jithu','Anu');
insert into manage values('Sooraj','John');
insert into manage values('Jithin','John');
select * from manage;
select ename,cname from works where cname='infosys';
select employee2.ename,employee2.city from employee2,works where employee2.ename=works.ename and works.cname='wipro';
select employee2.ename,employee2.city from employee2 where ename in (select ename from works where cname='infosys' and salary>10000);
select employee2.ename,employee2.city from employee2,works,company where employee2.ename=works.ename and employee2.city=company.city and company.cname=works.cname;
select ename from works where cname not in('wipro');
select max(cname),count(*)as total from works group by cname;