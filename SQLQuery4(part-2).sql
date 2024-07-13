--Delete,Drop,Truncate
--PART-A:-
SELECT CNAME,ANO,BNAME,AMOUNT,PINCODE INTO DEPOSIT_DETAIL FROM DEPOSIT
 SELECT*FROM DEPOSIT_DETAIL

 UPDATE DEPOSIT_DETAIL SET PINCODE=360005

 --Delete all the records of DEPOSIT_DETAIL table having amount greater than and equals to 4000.
 DELETE FROM DEPOSIT_DETAIL WHERE AMOUNT>=4000

--Delete all the accounts CHANDI BRANCH.
DELETE FROM DEPOSIT_DETAIL WHERE BNAME='CHANDI'

--Delete all the accounts having account number (ANO) is greater than 105.
DELETE FROM DEPOSIT_DETAIL WHERE ANO>105

--Delete all the records of Deposit_Detail table. (Use Truncate)
TRUNCATE TABLE DEPOSIT_DETAIL
--Remove Deposit_Detail table. (Use Drop)
DROP TABLE DEPOSIT_DETAIL

--Part-B:-
create table EMPLOYEE_MASTER(
EmpNo INT,
EmpName VARCHAR(25),
JoiningDate DATE,
Salary DECIMAL (8,2),
City VARCHAR(20));

INSERT INTO EMPLOYEE_MASTER values
(101, 'Keyur' ,'2002-01-05', 12000.00 ,'Rajkot'),
(102, 'Hardik','2004-02-15', 14000.00,'Ahmedabad'),
(103, 'Kajal','2006-03-14', 15000.00 ,'Baroda'),
(104, 'Bhoomi','2005-06-23', 12500.00 , 'Ahmedabad'),
(105, 'Harmit' ,'2004-02-15', 14000.00, 'Rajkot'),
(106, 'Mitesh','2001-9-25', 5000.00, 'Jamnagar'),
(107, 'Meera',Null ,7000.00, 'Morbi'),
(108, 'Kishan' ,'2003-02-06', 10000.00, NULL);

SELECT *FROM EMPLOYEE_MASTER

--Delete all the records of Employee_MASTER table having salary greater than and equals to 14000.
delete from EMPLOYEE_MASTER where salary>=14000

--Delete all the Employees who belongs to ‘RAJKOT’ city.
delete from EMPLOYEE_MASTER where city='rajkot'

--Delete all the Employees who joined after 1-1-2007.
delete from EMPLOYEE_MASTER where JoiningDate>'2007-01-01'

--Delete the records of Employees whose joining date is null and Name is not null.
delete from EMPLOYEE_MASTER where JoiningDate is null and EmpName is not null

--Delete the records of Employees whose salary is 50% of 20000.
delete from EMPLOYEE_MASTER where salary=10000

--Delete the records of Employees whose City Name is not empty.
delete from EMPLOYEE_MASTER where city is not null

--Delete all the records of Employee_MASTER table. (Use Truncate)
TRUNCATE TABLE EMPLOYEE_MASTER

--Remove Employee_MASTER table. (Use Drop)
DROP TABLE EMPLOYEE_MASTER

--PART-C
--Summarize Delete, Truncate and Drop--*DELETE is used to remove specific rows from a table based on a given condition.
--*TRUNCATE is used to delete all rows from a table, leaving the row with the column names.
--*DROP is used to delete an entire table, including its structure and data.