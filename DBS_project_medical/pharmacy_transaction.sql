CREATE OR REPLACE PROCEDURE pharmacy_transaction2(mid prescription.id%TYPE) IS    
cursor c1 is select medicine_name, quantity_needed from medicine_handle where prescriptionid = mid;
cursor c2(iname inventory.item_name%type) is select * from inventory where item_name = iname and expiry > sysdate;
cost dispensed.amount%type := 0;
temp1 inventory.quantity%type := 0;
BEGIN
    savepoint s1;
    
    for i in c1 loop
        cost := 0;
        temp1 := i.quantity_needed;
        for j in c2(i.medicine_name) loop
            if temp1 >= j.quantity then 
                delete from inventory where itemid = j.itemid;
                cost := cost + (j.quantity * j.price_per_unit);
                temp1 := temp1 - j.quantity;
            else
                update inventory set quantity = (quantity - temp1) where itemid = j.itemid;
                cost := cost + (temp1 * j.price_per_unit);
                temp1 := 0;
            end if;
        end loop;

        if temp1 > 0 then
            dbms_output.put_line('Item ' || i.medicine_name || ' is short by ' || temp1);
            dbms_output.put_line('Item shortage, transaction failed');
            rollback to s1;
            return; 
        else
            INSERT INTO dispensed (prescriptionID, medicine_name, dispense, amount, 	quantity_dispensed)
            VALUES (mid, i.medicine_name, sysdate, cost, i.quantity_needed);
        end if;
    end loop;

    dbms_output.put_line('Transaction successful');
    commit;
END;
/
