create database order_management;
use order_management;
create table orders (
order_id int auto_increment key,
customer_name varchar(245) not null,
product_name varchar(199) not null,
quantity int not null,
price decimal(10,2) not null,
order_date date not null,
status varchar(256) default 'pending'
);

INSERT INTO orders (customer_name, product_name, quantity, price, order_date, status) VALUES
('Alice Johnson', 'Wireless Mouse', 2, 25.99, '2025-09-10', 'completed'),
('Bob Smith', 'Mechanical Keyboard', 1, 79.99, '2025-09-11', 'pending'),
('Carol Lee', 'USB-C Cable', 3, 9.99, '2025-09-12', 'shipped'),
('David Kim', 'Laptop Stand', 1, 49.99, '2025-09-13', 'pending'),
('Eve Martinez', 'Bluetooth Speaker', 2, 59.95, '2025-09-14', 'completed'),
('Frank Brown', 'Webcam HD', 1, 89.50, '2025-09-15', 'shipped'),
('Grace Wilson', 'External Hard Drive 1TB', 1, 120.00, '2025-09-16', 'pending'),
('Hank Davis', 'Gaming Chair', 1, 199.99, '2025-09-17', 'completed'),
('Ivy Green', 'Smartphone Case', 5, 12.99, '2025-09-18', 'pending'),
('Jack White', 'Wireless Charger', 2, 29.99, '2025-09-19', 'shipped');

select *from orders;

select *from orders order by price asc;

select *from orders order by price desc;

select *from orders order by price desc limit 1 offset 1;

select *from orders order by price desc limit 1;

select *from orders where status in('processing','pending','completed');

select count(*) as "total order" from orders;

select max(price) from orders;

select min(price) from orders;

select avg(price) as "average price" from orders;

select count(*),status from orders group by status;