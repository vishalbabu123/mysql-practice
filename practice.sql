USE ASSIGNMENT;

SELECT * FROM COUNTRIES;

SELECT * FROM COUNTRIES WHERE NAME = "INDIA" AND CAPITAL= "NEW DELHI";
SELECT * FROM COUNTRIES WHERE NAME = "INDIA" OR CAPITAL= "NEW DELHI";
/*RELATIONAL OPERATOR*/

SELECT * FROM COUNTRIES WHERE NAME = "INDIA";
SELECT * FROM COUNTRIES WHERE POPULATION >140;
SELECT * FROM COUNTRIES WHERE POPULATION <456;


/* LOGICAL OPERATOR*/
-- FITHER THE RECORDS FROM MULTIPLE TABLE

SELECT * FROM COUNTRIES WHERE CAPITAL = "JAKARTA" AND NAME = "INDONESIA" OR POPULATION = 1382;
-- between operetor

-- to filter the records in the specified range

select* from countries where population between 209 and 324;

select * from countries where population <160 and population = 209;

-- in operator

-- simplify the process of providing multiple value to the same column

select * from product;
select * from product where product_id in ( 101,102,103);

select *from movies;
select * from  movies where category in ("action","18+","romance");


-- like operator
-- pattern matching 

select * from movies where category like "A%";
select * from movies where category like "%n";

-- allias

select category as categoryname  from movies;

-- limit 
select * from movies 
where category = " Animations"  
limit 3;


-- uppercase & lowercase

select upper(TITLE)as TITLE FROM MOVIES;
select lower(title) title from movies;

select length(title) as title from movies;

select instr(category,'c') as category from movies;

select * from employee;
-- concat() :- to add two or more coulumn data together

select concat(fname, lname) as fullname from employee;

-- truncate():- return the numeric value with the specified number of digits after the decimal point.

-- rollback :- revert the temporary change done on a particular table 
-- groupby:-to group the retrived record according the specified coulumn.
select empid,sum(salary) from employee group by empid;

/*set operator:-there are different types of set operator 
1:-union :- to remove the dublicate data
2:-union all:-even dublicate value will retrive
3:-intersect:-only common value will retrieve
4:-minus  */

/* joins : there are different types of joins
1.inner joins
2.right joins
3.left joins
4.outer join or full joins
5.self join   */

select * from emp;

select * from employee 
inner join emp
on employee.salary = emp.salary;

select * from customers;
-- question 
/* 1. find all the customers in the customer table who are from the same city of La Rochelle Gifts*/

select * from customers where city = (select city from customers where customerName ='La Rochelle Gifts');

-- find second max price 
 select max(creditLimit) as secondmax from customers where creditLimit < (select max(creditLimit) from customers);


