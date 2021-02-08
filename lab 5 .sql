-- drop column picture from Staff
alter table staff
drop column picture;
select * from staff;

-- create new person
select * from customer
where last_name = 'SANDERS';

select * from staff;

insert into sakila.staff
values (3,'Tammy','Sanders',79,'Tammy.sanders@sakilacustomer.org',2,1,'Tammy',NULL,'2021-02-08 11:00:00');

-- 3
select *
from sakila.rental;

select count(rental_id)
from sakila.rental
where rental_id BETWEEN 10000 AND 16000;

select COUNT(*)
from sakila.rental;

insert into sakila.rental
values (16050,'2021-02-08 11:00:00',1,130,'2021-02-10 17:00:00',1,'2021-02-08 11:00:00');

-- 4
select * from customer
where active = 0;

CREATE TABLE sakila.deleted_customers (
`customer_id` smallint(11) UNIQUE NOT NULL,
`email` varchar(50) DEFAULT NULL,
`date` datetime(6) DEFAULT NULL,
  CONSTRAINT PRIMARY KEY (customer_id)
  );
  
insert into sakila.deleted_customers (customer_id, email)
select customer_id, email from customer
where active = 0;

select * from customer;

delete from sakila.customer where active = 0;

-- can't do it