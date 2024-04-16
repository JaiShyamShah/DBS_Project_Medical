create or replace procedure get_appointments(did doctor.id%type) is
cursor c is select * from appointment where doctorid = did and TRUNC(appointment_time)=TRUNC(SYSDATE);
begin
dbms_output.put_line('appointments for doctor '||did||' on ' || TRUNC(systimestamp) || ' are: ');
for i in c loop
dbms_output.put_line('--------------------------');
dbms_output.put_line('on :'|| i.appointment_time);
dbms_output.put_line('with patient id: '|| i.patientID);
dbms_output.put_line('appointment status: '|| i.status); 
dbms_output.put_line('diagnosis: '|| i.diagnosis);
dbms_output.put_line('treatment_plan: '|| i.treatment_plan);
dbms_output.put_line('--------------------------');
end loop;
end ;
/