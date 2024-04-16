create or replace procedure give_prescription(pcid prescription.id%type,pid patient.id%type, did doctor.id%type) is
temp1 medicine_handle.medicine_name%type;
flag numeric(2);
temp2 numeric(5);
begin
insert into prescription values(pcid, 'Pending');
insert into prescription_for values(pcid, pid, did);
end;
/
