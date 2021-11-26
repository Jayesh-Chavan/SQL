#CREATE DATABASE school;
create database student;
drop database student;

show databases; 

use school;

create table student(
s_id int,
s_name VARCHAR(50),
primary key(s_id)
);

insert into student(s_id,s_name) values 
(1,'jayesh'),
(2,'vinit'),
(3,'suraj'),
(4,'komal');



select * from student;


show tables; # display tables in database

describe student;

alter table student add city varchar(50);

insert into student(s_id,s_name,city) values 
(9,'jayesh','adavad'),
(6,'vinit','pune'),
(7,'suraj','chopda'),
(8,'komal','satara');

alter table student add class varchar(10) after s_id, add education varchar(50) after class; 

select * from student;

alter table student modify city varchar(50) after class;

select * from student;

alter table student drop education;

alter table student change column class  education varchar(10);
						 
alter table student change education class varchar(15) after s_name;

select * from student;

alter table student rename to STUDENT1 ;

select * from STUDENT1;  
truncate table student1;  # delete values inserted , structure remains the same

drop table student1;  # deletes whole table

