create or replace procedure delete_expired is
cursor c is select * from inventory where expiry < sysdate;
begin
dbms_output.put_line('expired items deleted: ');
for i in c loop
dbms_output.put_line('item id :'|| i.itemid);
delete from inventory where itemid = i.itemid;
end loop;
end ;
/