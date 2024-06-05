create table emp_salary(empno int,ename varchar(20),dept varchar(25),salary int);
insert into emp_salary values(1,'Arun','cs',6789);
insert into emp_salary values(2,'Kavitha','cs',9654);
insert into emp_salary values(3,'Manoj','commerce',75000);
insert into emp_salary values(4,'Vidya','management',98765);
select * from emp_salary;

create or replace function average (department varchar(23))returns decimal as $$
declare
avg1 decimal;
begin
select avg(salary) into avg1 from emp_salary group by dept having dept=$1;
return avg1;
end;
$$ language plpgsql;
select average ('cs');
