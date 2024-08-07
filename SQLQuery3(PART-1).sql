--EXTRA:-
--retrieve all records and all the column from deposit table without using*
SELECT ACTNO,CNAME,BNAME,AMOUNT,ADATE FROM DEPOSIT

--RETRIEVE TOP 4 UNIQUE CITIES FROM BRANCH TABLE
SELECT DISTINCT TOP 4  CITY FROM BRANCH

--DISPLAY ALL THE COLUMN OF BORROW TABLE WITH AMOUNT INCREMENTED WITH 45%
SELECT *, AMOUNT+(AMOUNT*0.45) AS 'EXTRA AMOUNT' FROM BORROW

--DISPLAY TOP 50 PERCENT RECORDS OF THE CUSTOMER TABLE
SELECT TOP 50 PERCENT* FROM CUSTOMERS


--lab-3
--SELECT INTO OPERATION:-
--PART A:-
--create a table.
CREATE TABLE CRICKET(NAME VARCHAR(50),CITY VARCHAR(50),AGE INT);

--INSERT THE VALUES OF TABLES
INSERT INTO CRICKET VALUES
('Sachin Tendulkar','MUMBAI',30),
('Rahul Dravid','Bombay', 35),
('M. S. Dhoni', 'Jharkhand', 31),
('Suresh Raina', 'Gujarat', 30);

SELECT * FROM CRICKET

--CREATE WORLDCUP TABLE FROM CRICKET WITH ALL COLUMNS AND DATA.
SELECT NAME,CITY,AGE INTO WORLDCUP FROM CRICKET
 SELECT*FROM WORLDCUP
 
--CREATE T20 TABLE from cricket with first two columns with no data.
SELECT NAME,CITY INTO T20 FROM CRICKET WHERE 1=2
SELECT* FROM T20

--Create table IPL From Cricket with No Data
SELECT NAME,CITY,AGE INTO IPL FROM CRICKET WHERE 1=2
SELECT * FROM IPL

--PART-B:-
--CREATE A TABLE EMPLOYEE
CREATE TABLE EMPLOYEE(NAME VARCHAR(50),CITY VARCHAR(50),AGE INT);

--INSERT THE VALUES OF TABLES
INSERT INTO EMPLOYEE VALUES
('Jay Patel', 'Rajkot', 30),
('Rahul Dave', 'Baroda', 35),
('Jeet Patel','Surat',31),
('Vijay Raval', 'Rajkot', 30);
SELECT *FROM EMPLOYEE

--Create table Employee_detail from Employee with all the columns and data. 
SELECT NAME,CITY,AGE INTO EMPLOYEE_DETAIL FROM EMPLOYEE 

--Create table Employee_data from Employee with first two columns with no data.
SELECT NAME,CITY INTO EMPLOYEE_DATA FROM EMPLOYEE WHERE 1=2
SELECT *FROM EMPLOYEE_DATA

--Create table Employee_info from Employee with no Data
SELECT NAME,CITY,age INTO EMPLOYEE_INFO FROM EMPLOYEE WHERE 1=2
SELECT *FROM EMPLOYEE_INFO
select * from employee

--PART-C:-
--Insert the Data into Employee_info from Employee whose CITY is Rajkot
INSERT INTO EMPLOYEE_INFO SELECT *FROM EMPLOYEE WHERE CITY ='RAJKOT'
--Insert the Data into Employee_info from Employee whose age is more than 32.
INSERT INTO EMPLOYEE_INFO SELECT *FROM EMPLOYEE WHERE AGE > 32