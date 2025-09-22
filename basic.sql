show databases;
create database mohith_management;
use mohith_management;

create table student(
stu_id int primary key,
stu_name varchar(25),
stu_usn  int,
stu_email varchar(25)
);
insert into student(stu_id,stu_name,stu_usn,stu_email) values(1,"raja",093,'raja1234@.com');
select *from student;
select stu_id,stu_email from student;
alter table student
add column stu_class_room varchar(25) default 'CSE203';


desc student;