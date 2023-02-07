create table Salesperson(
salesperson_id serial primary key not null,
first_name VARCHAR(50) not null,
last_name VARCHAR(50) not null,
product_id INTEGER not null,
customer_id integer not null,
invoice_id integer not null
);


alter table Salesperson
add	foreign key(product_id) references Product(product_id),
add	foreign key(customer_id) references Customer(customer_id),
add	foreign key(invoice_id) references Invoice_tickets(invoice_id);

create  table Customer(
customer_id serial primary key,
first_name VARCHAR(50),
last_name VARCHAR(50),
product_id integer,
salesperson_id integer,
invoice_id integer,
mechanic_id integer,
service_id integer
	);
	
alter table Customer
add	foreign key(product_id) references product(product_id),
add	foreign key(salesperson_id) references Salesperson(salesperson_id),
add	foreign key(invoice_id) references invoice_tickets(invoice_id),
add	foreign key(mechanic_id) references Mechanic(mechanic_id),
add	foreign key(service_id) references service_tickets(service_id);

create table Invoice_tickets(
invoice_id serial primary key,
"Date" TIMESTAMP default CURRENT_TIMESTAMP,
product_id integer,
salesperson_id integer,
customer_id integer
);


alter table invoice_tickets 
add foreign key(customer_id) references Customer(customer_id),
add	foreign key(product_id) references Product(product_id),
add	foreign key(salesperson_id) references Salesperson(salesperson_id)

create table Product(
product_id serial primary key not null,
car_brand VARCHAR(50) not null,
release_year VARCHAR(50) not null,
salesperson_id integer,
customer_id integer,
invoice_id integer);


alter table Product
add	foreign key(salesperson_id) references Salesperson(salesperson_id),
add	foreign key(customer_id) references Customer(customer_id),
add	foreign key(invoice_id) references Invoice_tickets(invoice_id)


create table Mechanic(
mechanic_id serial primary key not null,
first_name VARCHAR(50) not null,
last_name VARCHAR(50) not null,
service_id integer not null,
customer_id integer);
	
alter table Mechanic
add	foreign key(customer_id) references Customer(customer_id),
add	foreign key(service_id) references service_tickets(service_id)

create table service_tickets(
service_id serial primary key not null,
Car_brand VARCHAR(50),
release_year VARCHAR(50),
Description text,
car_serial_number VARCHAR(50),
customer_id integer,
mechanic_id integer
);

alter table service_tickets
add	foreign key(customer_id) references Customer(customer_id),
add	foreign key(mechanic_id) references Mechanic(mechanic_id);


alter table service_tickets
add column amount numeric(5,2);

alter table product
add column amount numeric(5,2);

alter table invoice_tickets
add column amount numeric(5,2);

