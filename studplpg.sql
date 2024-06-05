do $$
declare
sno student.sno%type;
sn student.sname%type;
sc student.course%type;
cr cursor for select * from student;
begin
open cr;
raise notice 'sno sname course';
loop
fetch cr into sno,sn,sc;
exit when not found;
raise notice '% % %',sno,sn,sc;
end loop;
close cr;
end $$;
