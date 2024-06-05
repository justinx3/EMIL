do $$
declare
i int;
begin
raise notice'whole number from 1-100';
for i in 1..100 loop
raise notice '%',i;
end loop;
raise notice'odd number from 1-100';
for i in 1..100 by 2 loop
raise notice '%',i;
end loop;
raise notice'even number from 1-100';
for i in 2..100 by 2 loop
raise notice '%',i;
end loop;
end $$;