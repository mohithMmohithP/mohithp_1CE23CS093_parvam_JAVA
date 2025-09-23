create database orders;
use orders;

create table management(
order_id int primary key,
cust_name varchar(99),
items varchar(88),
customer_city varchar(77)
);

insert into management values
(1,"alice",'pen-2,book-1','mumbai'),
(2,"bob",'book-3','dehli'),
(3,"alice",'pen-5,pencil-3,book-2','mumbai');

select *from management