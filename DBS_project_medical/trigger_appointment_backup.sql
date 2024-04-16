//compound trigger? table is being changed.

set serveroutput on

create or replace trigger check_conflict
AFTER insert or update on appointment

for each row
DECLARE
cursor c is select appointment_time , patientid, doctorid from appointment;
begin
case 
when inserting then 
for i in c loop
if i.appointment_time = :NEW.appointment_time then 
if i.patientid = :NEW.patientid then 
dbms_output.put_line('patient already has a appointment ');
delete from appointment where patientid = :NEW.patientid and appointment_time = :NEW.appointment_time and doctorid = :NEW.doctorid;
end if;
if i.doctorid = :NEW.doctorid then 
dbms_output.put_line('doctor already has a appointment ');
delete from appointment where patientid = :NEW.patientid and appointment_time = :NEW.appointment_time and doctorid = :NEW.doctorid;

end if;
end if;
end loop;

when updating then 
for i in c loop
if i.appointment_time = :NEW.appointment_time then 
if i.patientid = :NEW.patientid then 
dbms_output.put_line('patient already has a appointment ');
delete from appointment where patientid = :NEW.patientid and appointment_time = :NEW.appointment_time and doctorid = :NEW.doctorid;

end if;
if i.doctorid = :NEW.doctorid then 
dbms_output.put_line('doctor already has a appointment ');
delete from appointment where patientid = :NEW.patientid and appointment_time = :NEW.appointment_time and doctorid = :NEW.doctorid;
end if;
end if;
end loop;

end case;
end;
/
