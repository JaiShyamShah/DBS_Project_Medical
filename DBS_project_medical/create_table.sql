create table patient(
ID numeric(8),
first_name varchar(15),
middle_name varchar(15),
last_name varchar(15),
Dob date,
contact numeric(10),
EHR varchar(30),
primary key (ID)
);

create table intern(
ID numeric(8),
first_name varchar(15),
middle_name varchar(15),
last_name varchar(15),
Dob date,
Dept varchar(20) not null,
qualifications varchar(20),
work_schedule varchar(10),
access_level numeric(5),
contact numeric(10),
college varchar(20) not null,
primary key (ID),
check (work_schedule in ('morning','night', 'inventory'))
);

create table doctor(
ID numeric(8),
first_name varchar(15),
middle_name varchar(15),
last_name varchar(15),
Dob date,
Dept varchar(20) not null,
qualifications varchar(20),
work_schedule varchar(10),
access_level numeric(5),
contact numeric(10),
work_experience numeric(2),
primary key (ID),
check (work_schedule in ('morning','night'))
);

create table inventory(
itemID numeric(8),
item_name varchar(20),
item_type varchar(20),
quantity numeric(6),
threshold numeric(5) not null,
expiry date not null,
price_per_unit numeric(6),
primary key (itemID));

create table prescription(
ID numeric(10),
status varchar(20),
primary key(ID),
check (status in ('Pending', 'Completed', 'Failed'))
);


create table medicine(
medicine_name varchar(20),
item_type varchar(20),
primary key (medicine_name)
);


create table appointment(
patientID numeric(8),
doctorID numeric(8),
appointment_time timestamp not null,
status varchar(10),
diagnosis varchar(30),
treatment_plan varchar(30),
primary key(patientID, doctorID, appointment_time),
check (status in ('Pending', 'Completed', 'NoShow')),
foreign key (patientID) references patient(ID),
foreign key (doctorID) references doctor(ID)
);

create table eval(
internID numeric(8),
doctorID numeric(8),
rating numeric(2) not null,
hours_worked numeric(4),
primary key(internID,doctorID),
foreign key (internID) references intern(ID),
foreign key (doctorID) references doctor(ID)
);

create table medicine_handle(
prescriptionID numeric(10),
medicine_name varchar(20),
quantity_needed numeric(4) not null,
primary key(prescriptionID,medicine_name),
foreign key (prescriptionID) references prescription(ID),
foreign key (medicine_name) references medicine
);

create table dispensed(
prescriptionID numeric(10),
medicine_name varchar(20) not null,
dispense Date,
amount numeric(8),
quantity_dispensed numeric(5) not null,
primary key(prescriptionID, medicine_name),
foreign key (prescriptionID) references prescription(ID)
);

create table prescription_for(
prescriptionID numeric(10),
patientID numeric(8),
doctorID numeric(8),
primary key(prescriptionID, patientID, doctorID),
foreign key (prescriptionID) references prescription(ID),
foreign key (patientID) references patient(ID),
foreign key (doctorID) references doctor(ID)
);




















































