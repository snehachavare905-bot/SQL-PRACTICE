CREATE DATABASE TASK
USE TASK

CREATE TABLE Employee
(
Emp_ID INT,
Emp_Name VARCHAR(50),
Gender VARCHAR(10),
Department VARCHAR(30),
City VARCHAR(30),
Joining_date DATE,
Salary BIGINT,
Contact_No BIGINT,
Status VARCHAR(20),
Email_ID VARCHAR(100),
);

INSERT INTO Employee VALUES 
(101,'ABHIJIT','M','IT','PUNE','2025-01-21',50000,9865987643,'ACTIVE','Abhi123@gmail.com'),
(102,'ATHARAV','M','SALES','MUMBAI','2026-01-21',40000,9865987642,'ACTIVE','Atharav123@gmail.com'),
(103,'SAKSHI','F','FINANCE','PANJAB','2024-06-21',60000,8865987643,'INACTIVE','Sakshi123@gmail.com'),
(104,'AMEER','M','MARKETING','DELHI','2021-04-21',80000,8965987643,'ONLEAVE','Ameer123@gmail.com'),
(105,'MEERA','F','PRODUCTION','MUMBAI','2026-07-21',90000,7265987643,'ACTIVE','Meera123@gmail.com'),
(106,'RAHUL','M','FINANCE','SOLAPUR','2022-05-21',70000,6565987643,'ONLEAVE','Rahul123@gmail.com'),
(107,'AKANKSHA','F','SALES','MUMBAI','2023-11-21',60000,7565987643,'ACTIVE','Akanksha123@gmail.com'),
(108,'ROHIT','M','MARKETING','PUNE','2024-06-21',50000,7234987643,'INACTIVE','Rohit123@gmail.com'),
(109,'DIVYA','F','FINANCE','AURANGABAD','2022-08-21',60000,9081987643,'ONLEAVE','Divya123@gmail.com'),
(110,'SHANKAR','F','PRODUCTION','PANDHARPUR','2023-09-21',80000,8995987643,'INACTIVE','Shankar123@gmail.com');

SELECT * FROM Employee

ALTER TABLE Employee ADD state varchar(50),Manager_id int

ALTER TABLE Employee DROP COLUMN state , gender , Manager_id

UPDATE Employee SET EMP_NAME = 'ABHI' WHERE EMP_ID = 101
UPDATE Employee SET STATUS = 'ACTIVE' WHERE EMP_ID = 103 

SELECT * FROM EMPLOYEE

DELETE FROM employee WHERE EMP_ID = 104
DELETE FROM employee WHERE EMP_ID = 106
DELETE FROM employee WHERE EMP_ID = 108

ALTER TABLE Employee ALTER COLUMN Salary bigint
UPDATE Employee SET Salary = 500000000 WHERE Emp_ID = 101

SELECT EMP_ID , EMP_NAME , DEPARTMENT , CITY , SALARY FROM EMPLOYEE

INSERT INTO EMPLOYEE VALUES(111,'','IT','','08-09-2021','',8798543276,'','Shruti123@gmail.com')
INSERT INTO EMPLOYEE VALUES(112,'sneha','','PUNE',NULL,80000,'','ACTIVE','')
INSERT INTO EMPLOYEE VALUES(113,'','FINANCE','','09-11-2023','',9878543276,'','Sakshi123@gmail.com')
INSERT INTO EMPLOYEE VALUES(114,'Raj','','Mumbai',NULL,70000,'','ACTIVE','')
INSERT INTO EMPLOYEE VALUES(115,'','IT','','09-11-2021','',9878543276,'','Sakshi123@gmail.com')

SELECT * FROM Employee

SELECT * FROM Employee ORDER BY Emp_id

DELETE FROM Employee WHERE Emp_id > 105

CREATE TABLE EMP
(
Emp_id int,
Name varchar(50),
City varchar (30),
Salary bigint,
);

INSERT into EMP VALUES (1,'Avinash','Pune',60000),
(2,'Akanksha','Mumbai',700000),
(3,'Kartik','Solapur',80000),
(4,NULL,'haidarabad',85000),
(NULL,'Abhi',NULL,750000);

SELECT * FROM EMP;

SELECT * FROM EMP WHERE Emp_id %2=0;
SELECT * FROM EMP WHERE Emp_id %2=1;

ALTER TABLE EMP ADD Department VARCHAR(50)


CREATE TABLE Dep
(
Emp_id int,
Name varchar(50),
City varchar (30),
Salary bigint,
Department VARCHAR(50),
);

INSERT INTO Dep VALUES (1,'Avinash','Pune',60000,'IT'),
(2,'Akanksha','Mumbai',700000,'Hr'),
(3,'Kartik','Solapur',80000,'Finance'),
(4,'Karan','haidarabad',85000,'Marketing'),
(5,'Abhi','Mohol',750000,'sales'),
(6,'Avi','Pune',70000,'IT'),
(7,'Sakshi','Mumbai',800000,'IT'),
(8,'Keshav','Solapur',90000,'Sales'),
(9,'Priti','haidarabad',95000,'Marketing'),
(10,'Abhijit','Mohol',850000,'sales');

SELECT * FROM Dep

UPDATE Dep SET Salary = Salary * 1.20 WHERE Department = 'IT'

UPDATE Dep SET Salary = Salary * 1.10 WHERE Department = 'Sales'

UPDATE Dep SET Salary = Salary * 1.05 WHERE Department = 'Marketing'

UPDATE Dep SET Salary = Salary * 1.05 WHERE Department = 'Hr'

UPDATE Dep SET Salary = Salary * 1.05 WHERE Department = 'Finance'

UPDATE Dep SET Salary = 
CASE
    WHEN Department = 'IT' THEN  
Salary * 1.20 
     WHEN Department = 'Sales' THEN  
Salary * 1.10
       ELSE Salary * 1.05 
END;






