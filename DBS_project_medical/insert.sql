INSERT INTO patient (ID, first_name, middle_name, last_name, Dob, contact, EHR) 
VALUES 
(1001, 'John', 'Doe', 'Smith', TO_DATE('1990-05-15', 'YYYY-MM-DD'), 1234567890, 'EHR123456');
INSERT INTO patient (ID, first_name, middle_name, last_name, Dob, contact, EHR) 
VALUES
(1002, 'Alice', 'Jane', 'Doe', TO_DATE('1985-10-20', 'YYYY-MM-DD'), 9876543210, 'EHR987654');
INSERT INTO patient (ID, first_name, middle_name, last_name, Dob, contact, EHR) 
VALUES
(1003, 'Michael', 'A', 'Johnson', TO_DATE('1978-03-08', 'YYYY-MM-DD'), 4567890123, 'EHR456789');
INSERT INTO patient (ID, first_name, middle_name, last_name, Dob, contact, EHR) 
VALUES
(1004, 'Emily', 'Rose', 'Taylor', TO_DATE('1995-12-25', 'YYYY-MM-DD'), 7890123456, 'EHR789012');
INSERT INTO patient (ID, first_name, middle_name, last_name, Dob, contact, EHR) 
VALUES
(1005, 'David', 'B', 'Brown', TO_DATE('1980-09-17', 'YYYY-MM-DD'), 3216549870, 'EHR321654');


INSERT INTO intern (ID, first_name, middle_name, last_name, Dob, Dept, qualifications, work_schedule, access_level, contact, college) 
VALUES 
(2001, 'Jessica', 'L', 'Miller', TO_DATE('1993-07-12', 'YYYY-MM-DD'), 'Cardiology', 'MBBS', 'morning', 3, 2345678901, 'Medical College A');

INSERT INTO intern (ID, first_name, middle_name, last_name, Dob, Dept, qualifications, work_schedule, access_level, contact, college) 
VALUES 
(2002, 'Robert', 'M', 'Clark', TO_DATE('1992-04-25', 'YYYY-MM-DD'), 'Pediatrics', 'MBBS', 'night', 2, 3456789012, 'Medical College B');

INSERT INTO intern (ID, first_name, middle_name, last_name, Dob, Dept, qualifications, work_schedule, access_level, contact, college) 
VALUES 
(2003, 'Samantha', 'K', 'Wilson', TO_DATE('1994-09-30', 'YYYY-MM-DD'), 'Orthopedics', 'MBBS', 'morning', 3, 4567890123, 'Medical College C');

INSERT INTO intern (ID, first_name, middle_name, last_name, Dob, Dept, qualifications, work_schedule, access_level, contact, college) 
VALUES 
(2004, 'Andrew', 'J', 'Lee', TO_DATE('1991-12-05', 'YYYY-MM-DD'), 'Neurology', 'MBBS', 'night', 3, 5678901234, 'Medical College D');

INSERT INTO intern (ID, first_name, middle_name, last_name, Dob, Dept, qualifications, work_schedule, access_level, contact, college) 
VALUES 
(2005, 'Jennifer', 'S', 'Harris', TO_DATE('1990-02-20', 'YYYY-MM-DD'), 'Dermatology', 'MBBS', 'morning', 2, 6789012345, 'Medical College E');

INSERT INTO intern (ID, first_name, middle_name, last_name, Dob, Dept, qualifications, work_schedule, access_level, contact, college) 
VALUES 
(2006, 'Chris', 'L', 'Wong', TO_DATE('1990-06-20', 'YYYY-MM-DD'), 'Dental', 'MBBS', 'morning', 2, 7890123456, 'Medi
cal College F');


INSERT INTO doctor (ID, first_name, middle_name, last_name, Dob, Dept, qualifications, work_schedule, access_level, contact, work_experience) 
VALUES 
(3001, 'Daniel', 'A', 'Smith', TO_DATE('1975-08-10', 'YYYY-MM-DD'), 'Cardiology', 'MD', 'morning', 5, 7890123456, 15);

INSERT INTO doctor (ID, first_name, middle_name, last_name, Dob, Dept, qualifications, work_schedule, access_level, contact, work_experience) 
VALUES 
(3002, 'Jennifer', 'B', 'Taylor', TO_DATE('1982-11-20', 'YYYY-MM-DD'), 'Pediatrics', 'MD', 'night', 4, 8901234567, 12);

INSERT INTO doctor (ID, first_name, middle_name, last_name, Dob, Dept, qualifications, work_schedule, access_level, contact, work_experience) 
VALUES 
(3003, 'Matthew', 'C', 'Anderson', TO_DATE('1978-06-15', 'YYYY-MM-DD'), 'Orthopedics', 'MD', 'morning', 5, 9012345678, 18);

INSERT INTO doctor (ID, first_name, middle_name, last_name, Dob, Dept, qualifications, work_schedule, access_level, contact, work_experience) 
VALUES 
(3004, 'Emily', 'D', 'Johnson', TO_DATE('1985-03-05', 'YYYY-MM-DD'), 'Neurology', 'MD', 'night', 4, 1234567890, 14);

INSERT INTO doctor (ID, first_name, middle_name, last_name, Dob, Dept, qualifications, work_schedule, access_level, contact, work_experience) 
VALUES 
(3005, 'Christopher', 'E', 'Brown', TO_DATE('1980-01-30', 'YYYY-MM-DD'), 'Dermatology', 'MD', 'morning', 5, 2345678901, 20);

INSERT INTO doctor (ID, first_name, middle_name, last_name, Dob, Dept, qualifications, work_schedule, access_level, contact, work_experience) 
VALUES 
(3006, 'Harry', 'W', 'Shaw', TO_DATE('1983-08-29', 'YYYY-MM-DD'), 'Dental', 'MD', 'morning', 5, 1098765432, 11);


INSERT INTO inventory (itemID, item_name, item_type, quantity, threshold, expiry, price_per_unit) 
VALUES 
(4001, 'Paracetamol', 'Tablet', 500, 100, TO_DATE('2025-06-30', 'YYYY-MM-DD'), 2.50);

INSERT INTO inventory (itemID, item_name, item_type, quantity, threshold, expiry, price_per_unit) 
VALUES 
(4002, 'Amoxicillin', 'Capsule', 300, 50, TO_DATE('2024-12-31', 'YYYY-MM-DD'), 3.00);

INSERT INTO inventory (itemID, item_name, item_type, quantity, threshold, expiry, price_per_unit) 
VALUES 
(4003, 'Ibuprofen', 'Tablet', 400, 80, TO_DATE('2025-03-31', 'YYYY-MM-DD'), 1.80);

INSERT INTO inventory (itemID, item_name, item_type, quantity, threshold, expiry, price_per_unit) 
VALUES 
(4004, 'Omeprazole', 'Capsule', 200, 30, TO_DATE('2024-09-30', 'YYYY-MM-DD'), 4.50);

INSERT INTO inventory (itemID, item_name, item_type, quantity, threshold, expiry, price_per_unit) 
VALUES 
(4005, 'Ciprofloxacin', 'Tablet', 350, 70, TO_DATE('2024-11-30', 'YYYY-MM-DD'), 5.50);

INSERT INTO inventory (itemID, item_name, item_type, quantity, threshold, expiry, price_per_unit) 
VALUES 
(4006, 'Zyncet', 'Tablet', 50, 70, TO_DATE('2024-1-30', 'YYYY-MM-DD'), 3.50);


INSERT INTO prescription (ID, status) 
VALUES (5001, 'Pending');

INSERT INTO prescription (ID, status) 
VALUES (5002, 'Completed');

INSERT INTO prescription (ID, status) 
VALUES (5003, 'Failed');

INSERT INTO prescription (ID, status) 
VALUES (5004, 'Pending');

INSERT INTO prescription (ID, status) 
VALUES (5005, 'Pending');

INSERT INTO prescription (ID, status) 
VALUES (5006, 'Pending');



INSERT INTO medicine (medicine_name, item_type) 
VALUES ('Paracetamol', 'Tablet');

INSERT INTO medicine (medicine_name, item_type) 
VALUES ('Amoxicillin', 'Capsule');

INSERT INTO medicine (medicine_name, item_type) 
VALUES ('Ibuprofen', 'Tablet');

INSERT INTO medicine (medicine_name, item_type) 
VALUES ('Omeprazole', 'Capsule');

INSERT INTO medicine (medicine_name, item_type) 
VALUES ('Ciprofloxacin', 'Tablet');

INSERT INTO medicine (medicine_name, item_type) 
VALUES ('Zyncet', 'Tablet');


INSERT INTO appointment (patientID, doctorID, appointment_time, status, diagnosis, treatment_plan) 
VALUES (1001, 3001, TO_TIMESTAMP('2024-05-15 09:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Pending', 'Pending', 'Pending');

INSERT INTO appointment (patientID, doctorID, appointment_time, status, diagnosis, treatment_plan) 
VALUES (1002, 3002, TO_TIMESTAMP('2024-04-16 10:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Completed', 'Fever', 'Rest and medication');

INSERT INTO appointment (patientID, doctorID, appointment_time, status, diagnosis, treatment_plan) 
VALUES (1003, 3003, TO_TIMESTAMP('2024-04-15 11:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'NoShow', 'Pending', 'Pending');

INSERT INTO appointment (patientID, doctorID, appointment_time, status, diagnosis, treatment_plan) 
VALUES (1004, 3004, TO_TIMESTAMP('2024-05-18 12:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Pending', 'Pending', 'Pending');

INSERT INTO appointment (patientID, doctorID, appointment_time, status, diagnosis, treatment_plan) 
VALUES (1005, 3005, TO_TIMESTAMP('2024-04-19 13:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Pending', 'Pending', 'Pending');


INSERT INTO eval (internID, doctorID, rating, hours_worked) 
VALUES (2001, 3001, 4, 40);

INSERT INTO eval (internID, doctorID, rating, hours_worked) 
VALUES (2002, 3002, 5, 45);

INSERT INTO eval (internID, doctorID, rating, hours_worked) 
VALUES (2003, 3003, 3, 38);

INSERT INTO eval (internID, doctorID, rating, hours_worked) 
VALUES (2004, 3004, 4, 42);

INSERT INTO eval (internID, doctorID, rating, hours_worked) 
VALUES (2005, 3005, 5, 40);


INSERT INTO medicine_handle (prescriptionID, medicine_name, quantity_needed) 
VALUES (5001, 'Paracetamol', 20);

INSERT INTO medicine_handle (prescriptionID, medicine_name, quantity_needed) 
VALUES (5002, 'Amoxicillin', 30);

INSERT INTO medicine_handle (prescriptionID, medicine_name, quantity_needed) 
VALUES (5003, 'Ibuprofen', 15);

INSERT INTO medicine_handle (prescriptionID, medicine_name, quantity_needed) 
VALUES (5004, 'Omeprazole', 10);

INSERT INTO medicine_handle (prescriptionID, medicine_name, quantity_needed) 
VALUES (5005, 'Ciprofloxacin', 25);

INSERT INTO medicine_handle (prescriptionID, medicine_name, quantity_needed) 
VALUES (5006, 'Zyncet', 50);


INSERT INTO dispensed (prescriptionID, medicine_name, dispense, amount, quantity_dispensed)
VALUES
(5002, 'Amoxicillin', TO_DATE('2024-04-16', 'YYYY-MM-DD'), 90,30);


INSERT INTO prescription_for (prescriptionID, patientID, doctorID) 
VALUES (5002, 1002, 3002);
