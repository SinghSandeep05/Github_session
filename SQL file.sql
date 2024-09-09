use sakila;
select * from actor;
select * from address;

-- Basic logical and conditional operations:

select 4.0 > 3.0 and 3 > 4; 
select 4.0 > 3.0 or 3 < 4;
select not(4.0 > 3.0);

select 4 > 5; 

/*Query to select all columns from actor */

select * from actor;

/*Query to select only first_name from actor */

select first_name from actor;

/*Query to select only first_name and last name from actor */

select first_name, last_name from actor;

/*Query to select all columns from payment */

select * from payment;


-- Filtering condition, where clause 
/*Query to select all columns from payment where amount is greater or equal to 4.99 */

select * from payment where amount >= 4.99;

-- create a new database ds 20

create database DS;

-- use database DS

use DS;

CREATE TABLE DS20 (
    student_id int,
    student_name varchar(20),
    gender varchar(20),
    experience int
);
-- insert two records into it

INSERT INTO DS20 VALUES (1,'AMIT','MALE', 10),
(2,'ASHA','FEMALE','5');

-- Query the table

select * from  DS20;

