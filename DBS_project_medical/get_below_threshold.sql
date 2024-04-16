create or replace procedure get_below_threshold is
cursor c is select * from inventory where quantity < threshold;
begin
dbms_output.put_line('items with shortage in the inventory: ');
for i in c loop
dbms_output.put_line('--------------------------');
dbms_output.put_line('item id :'|| i.itemid);
dbms_output.put_line('item name: '|| i.item_name);
dbms_output.put_line('quantity: '|| i.quantity);
dbms_output.put_line('threshold: '|| i.threshold);
dbms_output.put_line('--------------------------');
end loop;
end;
/