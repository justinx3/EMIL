create table customer(cust_no varchar(5),cust_name varchar(15),age int,ph_no varchar(10));
insert into customer values('101','manu',30,'9876543210');
insert into customer values('102','manju',28,'9845317892');
insert into customer values('103','abi',32,'9856569215');
insert into customer values('104','anju',25,'9867245920');
insert into customer values('105','ammu',33,'9877395296');
select * from customer;
alter table customer add column d_birth date;
alter table customer drop column age;
alter table customer alter column cust_no type varchar(25);
delete from customer;
alter table customer rename to cust;
drop table customer;
create table cust_phone as select cust_name,ph_no from customer;
select * from cust_phone;
drop table cust_phone;