create database emo_management;
use emo_management;
create table employee(
emp_id int primary key,
emp_name varchar(25),
emp_department varchar(24),
emp_salary int
);

insert into employee(emp_id,emp_name,emp_department,emp_salary) values
(0,"rani",'CSE',40000),
(2,"rana",'CS',50000),
(3,"raja",'ISE',3000),
(4,"raju",'AI',45000),
(5,"ragu",'JA',46000);

select *from employee;
alter table employee
add column emp_office_room varchar(35) default 'CSE102';
desc employee;
alter table employee
drop emp_office_room;

select *from employee limit 3 offset 1;

select *from employee where emp_id=4;

update employee
set emp_office_room='cs404'
where emp_id=3;

delete from employee 
where emp_id=0;

truncate employee;

drop database emo_management;

select database();