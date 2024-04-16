create or replace procedure pharmacy_transaction(mid prescription.prescriptionid%type) is
cursor c1 is select medicine_name, quantity_needed from medicine_handle where prescriptionid = mid;
cursor c2(iname inventory.item_name%type) is select * from inventory where item_name = iname and expiry > sysdate;
cost inventory.price_per_unit%type;
count_avaiable inventory.quantity%type;
temp1 inventory.quantity%type;
begin
savepoint s1;
count_available :=0;
cost :=0
for i in c1 loop
select sum(quantity) into count_available from inventory where item_name = i.medicine_name and expiry > sysdate;
if count_available < i.quantity_needed then 
temp1 := i.quantity_needed - count_available;
dbms_output.put_line('item '|| i.medicine_name || ' short by ' || temp1);
dbms_output.put_line('item shortage, transaction failed');
rollback;
GOTO failed_transaction;
end if;
	temp1 := i.quantity_needed;
	for j in c2(i.medicine_name) loop
	if temp1 >= j.quantity then 
	delete from inventory where itemid = j.itemid;
	cost := cost + (j.quantity * j.price_per_unit);
	temp1 := temp1 - j.quantity;
	else
	update inventory set quantity = (quantity - temp1) where itemid = j.itemid;
	cost := cost + (temp1 * j.price_per_unit);
	INSERT INTO dispensed (prescriptionID, medicine_name, dispense, amount, 	quantity_dispensed)
	VALUES
	(mid, i.medicine_name, sysdate, cost, i.quantity_needed);
 	GOTO next_item;
	end if;
	
	end loop;
<<next_item>>
end loop;

<<failed_transaction>>

end;
/