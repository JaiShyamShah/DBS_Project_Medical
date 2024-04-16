set serveroutput on

create or replace trigger check_intern
BEFORE insert or update on intern

for each row
DECLARE
interncount numeric(4); 
begin
interncount:=0;
case 
when inserting then
select count(*) into interncount from intern where college = :NEW.college and dept = :NEW.dept;
if interncount>0then 
dbms_output.put_line('intern already exist for this department and for this college');
RAISE_APPLICATION_ERROR(-20100, 'this intern cant be accepted');
end if;
when updating then
select count(*) into interncount from intern where college = :NEW.college and dept = :NEW.dept;
if interncount>0then 
dbms_output.put_line('intern already exist for this department and for this college');
RAISE_APPLICATION_ERROR(-20100, 'this intern cant be accepted');
end if;

end case;
end;
/