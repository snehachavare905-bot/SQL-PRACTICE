--CLAUSES
--THERE ARE 4 TYPES OF CLAUSES 
-- 1 WHERE----------PARTICULAR DATA FETCH , DELETE , UPDATE
-- 2 ORDER BY-------DATA SORTING - ASC OR DESC ----HERE DEFAULT ORDER BY IS ASC
-- 3 GROUP BY 
-- 4 HAVING

Create table Demo2
(
id int primary key,
Name varchar(50),
product Varchar(50),
price int,
);

Insert Into Demo2 values (1,'ABHI','IPHONE',100000),
(2,'SAGAR','MI',20000),
(3,'SATISH','MI',25000),
(4,'ABHI','VIVO',30000),
(5,'ABHI','VIVO',31000), 
(6,'SAGAR','VIVO',29000),
(7,'ABHI','IPHONE',51000),
(8,'GANESH','MI',17000),
(9,'SAGAR','VIVO',35000),
(10,'GANESH','SAMSUNG',60000);

SELECT * FROM Demo2 ;

-- where 
SELECT * from Demo2
where id = 2;

Select * from Demo2
where name = 'ABHI'

Select * from Demo2
where price = 20000

Select * from Demo2 
where product = 'IPHONE'

Select * from Demo2
where price <= 20000

Select * from Demo2
where price >= 50000

-- order by 
SELECT name , price
from Demo2 
Order by 2 asc ;

SELECT name , price
from Demo2 
Order by 2 desc ;

SELECT name 
from Demo2
order by name ;

SELECT price 
from Demo2


--group by 
SELECT MAX(price) , (Name) from Demo2
Group by Name ;

SELECT MIN(price) , (Name) from Demo2
Group by Name;

SELECT AVG(price), (Name) from Demo2
Group by Name;

SELECT COUNT(price), (Name) from Demo2
Group by Name;

SELECT SUM(price), (Name) from Demo2
Group by Name;

----------------------------------------------------------------------------
SELECT MAX(price), (product) from Demo2
Group by product;

SELECT MIN(price), (product) from Demo2
Group by product;

SELECT SUM(price), (product) from Demo2
Group by product;

SELECT AVG(price), (product) from Demo2
Group by product;

SELECT COUNT(price), (product) from Demo2
Group by product;

-----------------------------------------------------------------------
-- having 
SELECT MAX(price) , (Name) from Demo2
Group by Name 
Having Count(price) <= 10000;

SELECT MAX(price) , (product) from Demo2
Group by product 
Having Count(price) <= 10000;

SELECT COUNT(price) , (product) from Demo2
Group by product 
Having Count(price) <= 10000;

SELECT COUNT(price) , (product) from Demo2
Group by product 
Having Count(price) = 1;

-- WHERE
select * from Demo2
where product = 'VIVO'

select * from Demo2
where price > 30000 

select * from Demo2 
where name = 'ABHI'

select * from Demo2
where price between 20000 and 50000;

select * from Demo2
where product != 'MI' 

select * from Demo2 
where name like 'A%'

select * from Demo2 
where name like '%R'

select * from Demo2 
where name like '%A%'

--ORDER BY 
SELECT price from Demo2 
order by price asc;

SELECT price from Demo2 
order by price desc;

select name , price from demo2
order by name asc , price desc ;

--costliest 
--1 Show unique product names.
--2 Show unique customer names.
--3 Show the top 3 highest-priced products.
--4 Show the cheapest product.

SELECT top 3 *
from Demo2
order by price desc ;

SELECT top 1 *
from Demo2 
order by price asc ;

-- DISTINCT 
SELECT distinct product 
from demo2;

SELECT distinct Name
from demo2;

--GROUP BY 

select Name,
COUNT(product) as countofproduct
from Demo2 
group by name ;

select * from Demo2

select Name,
COUNT(product) as countofproduct
from Demo2 
group by name 
having count(*) > 1 

select Name,
COUNT(product) as countofproduct
from Demo2 
group by name 
having max(price) >= 1




