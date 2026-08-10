-- distinct -- function or command ( Q. distinct is a function or operator ) ans = function 


create table C
(
id int ,
city varchar(50),
)

insert into C values (1 , 'pune'),
(2, 'pune'),
(3, 'beng'),
(4, 'nagpur'),
(5, 'pune'),
(6, 'goa');

select * from C

create table E
(
id int,
city varchar (50)
)

insert into E values(1,'pune'),
(2,'beng'),
(3,'goa'),
(4,'nagpur'),
(5,'mumbai'),
(6,'pune');

select * from E

select distinct (city) from C 

select distinct (city) from D

select city from 

