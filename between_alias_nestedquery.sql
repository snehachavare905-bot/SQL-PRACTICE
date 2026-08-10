 
--1 BETWEEN----logical operator 
--2 NESTEDQUERY/SUBQUERY
--3 ALIAS ---- command 

create table Command
(
id int,
Name varchar(50),
Salary int,
joining_date date
)

Insert into Command values
(1,'abhi',40000,'01-06-2026'),
(2,'arjun',50000,'03-07-2026'),
(3,'vijay',60000,'02-08-2026'),
(4,'komal',70000,'05-01-2026'),
(5,'kartik',80000,'09-03-2026')

select * from Command

--between
select * from Command where salary between 40000 and 60000
select * from Command where joining_date between '01-01-2026' and '09-04-2026'

select * from Command where salary between 50000 and 70000

select * from Command where joining_date between '2026-02-01' and '2026-06-30'

select * from Command where id between 2 and 4 

select * from Command where Salary not between 50000 and 70000

select * from Command where joining_date between '2026-01-01' and '2026-03-01'

select Salary,Name from Command where Salary between 50000 and 70000

-- Alias 
select Name As Employee_Name from Command 

select salary As Employee_Salary from Command 

select joining_date As DOJ from Command

select Name As Emp_Name , salary As Monthly_salary from Command 

select id As e_id , Name As e_Name , salary As e_salary , joining_date As e_joining_date from Command --or
select e.* From command As e 
SELECT e.id,
       e.Name,
       e.salary,
       e.joining_date
FROM Command AS e;

--Nested Query or subquery 

select * from Command where salary = (select Max(salary ) from Command)

select * from Command where salary = (select Min(salary) from Command)

select name , salary from Command where salary > (select avg(salary) from Command )

select name , salary from Command where salary < (select avg(salary) from Command)

select * from Command where salary = (select max(salary) from Command)

select * from Command where salary = (select min(salary) from Command)

select * from Command where salary > (select salary from Command where Name = 'abhi')

select * from Command where joining_date > (select joining_date from Command where Name = 'arjun')

select * from Command where joining_date > (select joining_date from Command where Name = 'komal')

select * from Command where salary > (select Salary from Command where name = 'vijay')

select * from Command



