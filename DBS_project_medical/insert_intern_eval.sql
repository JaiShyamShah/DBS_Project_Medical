create or replace procedure insert_intern_eval(iid intern.id%type, did doctor.id%type, rt eval.rating%type, hw eval.hours_worked%type) is
begin
insert into eval values(iid, did, rt, hw);
dbms_output.put_line('eval for intern inserted ');
end;
/