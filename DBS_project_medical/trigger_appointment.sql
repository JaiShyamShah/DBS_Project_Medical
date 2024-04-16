create or replace trigger check_conflict
BEFORE insert or update on appointment
for each row
DECLARE
cursor c is select appointment_time , patientid, doctorid from appointment;
begin
case 
when inserting then 
for i in c loop
if i.appointment_time = :NEW.appointment_time then 
if i.patientid = :NEW.patientid then 
raise_application_error(-20100, 'already patient has a appointmnet for this time');
end if;
if i.doctorid = :NEW.doctorid then 
raise_application_error(-20100, 'already doctor has a appointmnet for this time');
end if;
end if;
end loop;
when updating then 
for i in c loop
if i.appointment_time = :NEW.appointment_time then 
if i.patientid = :NEW.patientid then 
raise_application_error(-20100, 'already patient has a appoitmnet for this time');
end if;
if i.doctorid = :NEW.doctorid then 
raise_application_error(-20100, 'already doctor has a appoitmnet for this time');
end if;
end if;
end loop;

end case;
end;
/


