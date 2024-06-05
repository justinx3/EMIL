create or replace procedure fibonacci(n int)language plpgsql as $$
declare
a int:=0;
b int:=1;
c int;
begin
raise notice 'fibonacci series';
raise notice '%',a;
raise notice '%',b;
loop
c:=a+b;
exit when c>=n;
raise notice '%',c;
a=b;
b:=c;
end loop;
end;
$$;
call fibonacci(25);