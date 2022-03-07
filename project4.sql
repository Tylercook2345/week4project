CREATE TABLE Customer (
  customer_id SERIAL,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  age INTEGER,
  address VARCHAR(150),
  email VARCHAR(50),
  PRIMARY KEY (customer_id)
);

insert into customer(
	customer_id,
	first_name,
	last_name,
	age,
	address 
	email
	customer_id
)Values(
	1,
	'Tyler',
	'Cook'
	'24',
	'1408 Allison Lane'
	'Tcookie@yahoo.com',
	1
	);
	
insert into customer(
	customer_id,
	first_name,
	last_name,
	age,
	address, 
	email,
	customer_id
)Values(
	2,
	'Mojo',
	'Jojo',
	100,
	'Far Far Away',
	'MojosDojo@gmail.com',
	2
);


CREATE TABLE salesperson (
  sales_id SERIAL,
  first_name VARCHAR(100),
  last_name VARCHAR(50),
  PRIMARY KEY (sales_id)
);

insert into salesperson (
	sales_id,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
);values (
	10
	'Chad',
	'Johnson',
);

insert into salesperson (
	sales_id,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
);values (
	11
	'Brad',
	'Thompson',
);

CREATE TABLE Invoice (
  invoice_id SERIAL,
  customer_id INTEGER,
  sales_id INTEGER,
  car_id VARCHAR(50),
  invoice_amount NUMERIC(8,2),
  invoice_date DATE,
  PRIMARY KEY (invoice_id),
  FOREIGN KEY (invoice_id) REFERENCES Customer(customer_id),
  FOREIGN KEY (sales_id) REFERENCES salesperson(sales_id)
);

insert into invoice(
	invoice_id,
	customer_id,
	sales_id,
	car_id,
	invoice_amount,
	invoice_date,
)value(
	2492452,
	1,
	10,
	20,
	100.00,
	1/13/2021,
);

insert into invoice(
	invoice_id,
	customer_id,
	sales_id,
	car_id,
	invoice_amount,
	invoice_date,
)value(
	2492453
	2
	11
	21,
	500.00,
	1/15/2021,
);
CREATE TABLE Car (
  car_id SERIAL,
  car_make VARCHAR(50),
  car_model VARCHAR(50),
  car_year INTEGER,
  license_plate VARCHAR(6),
  PRIMARY KEY (car_id)
);

insert into car(
	car_id,
	car_make,
	car_model,
	car_year, 
	license_plate,
)value(
	20,
	'Honda'
	'Accord'
	2005
	'AD5OP2'
);

insert into car(
	car_id,
	car_make,
	car_model,
	car_year, 
	license_plate,
)value(
	25,
	'Mazda'
	'6'
	2010
	'MZ6GOD'
);

CREATE TABLE service_ticket (
  service_id SERIAL,
  customer_id INTEGER,
  product_id INTEGER,
  parts VARCHAR(50),
  service_amount NUMERIC(6,2),
  service_type VARCHA(50),
  car_id INTEGER,
  PRIMARY KEY (service_id),
  FOREIGN KEY (car_id) REFERENCES Car(car_id)
);

insert into service_ticket (
	service_id,
	customer_id,
	product_id,
	parts,
	service_amount,
	service_type,
	car_id
)values(
	24095,
	1,
	100,
	'chrome spinners',
	100.00,
	'cosmetic',
	20
);

insert into service_ticket (
	service_id,
	customer_id,
	product_id,
	parts,
	service_amount,
	service_type,
	car_id
)values(
	24100
	2,
	150,
	'Nitrous tanks'
	500.00,
	'racing perfomance',
	25
);



CREATE TABLE mechanic (
 mechanic _id SERIAL 
 first_name VARCHAR(50), 
 last_name VARCHAR(50),
 PRIMARY KEY (mechanic_id)
);

insert into mechanic(
	mechanic_id,
	first_name,
	last_name,
)values(
	24856,
	'Bobby'
	'Hill'
);

insert into mechanic(
	mechanic_id,
	first_name,
	last_name,
)values(
	24857,
	'Hank',
	'Hill'
);

CREATE TABLE service_ticket_mechanic (
  service_mechanic_id SERIAL,
  service_id INTEGER,
  mechanic_id INTEGER,
  PRIMARY KEY (service_mechanic_id),
  FOREIGN KEY (service_id) REFERENCES mechanic(''''''),
  FOREIGN KEY (service_mechanic_id) REFERENCES service_ticket(service_id)
);

insert into service_ticket_mechanic(
	service_mechanic_id,
	service_id,
	mechanic_id,
)values(
	007,
	24095,
	24856
);

insert into service_ticket_mechanic(
	service_mechanic_id,
	service_id,
	mechanic_id,
)values(
	008,
	24100,
	24857
);


