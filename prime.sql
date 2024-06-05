create or replace function prime (num int) returns varchar(15) as $$
declare
i int;
begin
if num<=1 then
return 'not prime';
end if;
for i in 2..num/2 loop
if num%i=0 then
return 'not prime';
end if;
end loop;
return 'prime';
end;
$$ language plpgsql;
select prime(17);
select prime(20);
