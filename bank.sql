create table bank_cust(acc_no int primary key,cust_name varchar(25),place varchar(15));
create table deposit(acc_no int references bank_cust(acc_no),deposit_no int primary key,d_amt int);
create table loan(acc_no int references bank_cust(acc_no),l_no int primary key,l_amt int);
insert into bank_cust values(1234,'Arun','Thrissur');