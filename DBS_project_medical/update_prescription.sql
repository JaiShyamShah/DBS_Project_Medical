create or replace procedure update_prescription(pcid prescription.id%type, 
temp1 medicine_handle.medicine_name%type, 
temp2 medicine_handle.quantity_needed%type) is
begin
insert into medicine_handle values(pcid, temp1, temp2);
end;
/
