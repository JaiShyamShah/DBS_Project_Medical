create or replace procedure update_inventory(iid inventory.itemid%type, iq inventory.quantity%type) is
begin
dbms_output.put_line('items updated: '|| iid);
update inventory set quantity = iq where itemid = iid;
dbms_output.put_line('items new quantity: '|| iq);
end;
/