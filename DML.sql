insert into customer(
customer_id,
first_name,
last_name
)values(
1,
'Brandon',
'Atonte'
);

insert into customer(
customer_id,
first_name,
last_name,
)values(
2,
'Blessing',
'Penandjo'
);

insert into product(
product_id,
car_brand,
release_year,
amount
)values(
1,
'BMW',
'2020',
400
);


insert into product(
product_id,
car_brand,
release_year,
amount
)values(
2,
'TOYOTA',
'2022',
900
);

insert into mechanic(
mechanic_id,
first_name,
last_name,
service_id 
)values(
1,
'Manju',
'Ade',
1
);

insert into mechanic(
mechanic_id,
first_name,
last_name,
service_id 
)values(
2,
'Lum',
'Nji',
2
);

insert into service_tickets(
service_id,
car_brand,
release_year,
description,
car_serial_number,
amount
)values(
1,
'BMX',
'2018',
'Oil Change',
'W176SSHE',
40.97);

insert into service_tickets(
service_id,
car_brand,
release_year,
description,
car_serial_number,
amount
)values(
2,
'Mercedes',
'2022',
'Battery change',
'QJ23U4',
30.22
);

insert into salesperson(
salesperson_id,
first_name,
last_name,
product_id,
customer_id,
invoice_id)values(
1,
'Jonas',
'Mancho',
1,
1,
1);

insert into salesperson(
salesperson_id,
first_name,
last_name,
product_id,
customer_id,
invoice_id)values(
2,
'Mickey',
'Mouse',
2,
2,
2);

select *
from salesperson s 

insert into invoice_tickets (
invoice_id,
"Date",
customer_id,
product_id)values(
1,
now(),
1,
1);

insert into invoice_tickets (
invoice_id,
"Date",
customer_id,
product_id)values(
2,
now(),
2,
2);

select *
from salesperson s 

select *
from invoice_tickets it 

select *
from customer c 

select *
from service_tickets st 

select *
from mechanic m 

select *
from product p