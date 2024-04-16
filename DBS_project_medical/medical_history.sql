
create or replace procedure medical_history(pid patient.id%type) is
cursor c is select * from appointment where patientid = pid and appointment_time < systimestamp;
begin
dbms_output.put_line('history for this patient is: ');
for i in c loop
dbms_output.put_line('--------------------------');
dbms_output.put_line('on :'|| i.appointment_time);
dbms_output.put_line('with doctor id: '|| i.doctorID);
dbms_output.put_line('appointment status: '|| i.status); 
dbms_output.put_line('diagnosis: '|| i.diagnosis);
dbms_output.put_line('treatment_plan: '|| i.treatment_plan);
dbms_output.put_line('--------------------------');
end loop;
end ;
/