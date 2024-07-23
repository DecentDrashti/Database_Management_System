--Lab-7
--Part-A:-
CREATE TABLE EMP(
EID INT,
ENAME VARCHAR(20),
DEPARTMENT VARCHAR(50),
SALARY INT,
JOININGDATE DATE,
CITY VARCHAR(20));

INSERT INTO EMP VALUES
(101 ,'Rahul', 'Admin', 56000 ,'1-Jan-90' ,'Rajkot'),
(102, 'Hardik', 'IT', 18000, '25-Sep-90', 'Ahmedabad'),
(103, 'Bhavin' ,'HR' ,25000, '14-May-91', 'Baroda'),
(104,'Bhoomi','Admin',39000,'8-Feb-91','Rajkot'),
(105, 'Rohit','IT',17000,'23-Jul-90','Jamnagar'),
(106, 'Priya','IT',9000,'18-Oct-90','Ahmedabad'),
(107,'Bhoomi','HR',34000,'25-Dec-91','Rajkot');
SELECT *FROM EMP

--Display the Highest, Lowest, Label the columns Maximum, Minimum respectively.
SELECT MIN(SALARY) AS MINIMUM, MAX(SALARY) AS MAXIMUM FROM EMP

--Display Total, and Average salary of all employees. Label the columns Total_Sal and Average_Sal, respectively
SELECT SUM(SALARY) AS TOTAL_SAL, AVG(SALARY) AS AVERAGE_SAL FROM EMP 

--Find total number of employees of EMPLOYEE table.
SELECT COUNT(ENAME) FROM EMP

--Find highest salary from Rajkot city.
SELECT MAX(SALARY) FROM EMP WHERE CITY='RAJKOT'

--Give maximum salary from IT department
SELECT MAX(SALARY) FROM EMP WHERE DEPARTMENT='IT'

--Count employee whose joining date is after 8-feb-91
SELECT COUNT(ENAME) FROM EMP WHERE JOININGDATE>'8-FEB-91'

--Display average salary of Admin department
SELECT AVG(SALARY) FROM EMP WHERE DEPARTMENT='ADMIN'

--Display total salary of HR department
SELECT SUM(SALARY) FROM EMP WHERE DEPARTMENT='HR'

--Count total number of cities of employee without duplication.
SELECT COUNT(DISTINCT CITY) FROM EMP 

--Count unique departments.SELECT DISTINCT DEPARTMENT FROM EMP

--Give minimum salary of employee who belongs to Ahmedabad.
SELECT MIN(SALARY) FROM EMP WHERE CITY='AHMEDABAD'

--Find city wise highest salary
SELECT MAX(SALARY) FROM EMP GROUP BY CITY

--Find department wise lowest salary
SELECT MIN(SALARY) FROM EMP GROUP BY DEPARTMENT

--Display city with the total number of employees belonging to each city.
SELECT COUNT(ENAME) FROM EMP GROUP BY CITY

--Give total salary of each department of EMP table
SELECT SUM(SALARY) FROM EMP GROUP BY DEPARTMENT

--Give average salary of each department of EMP table without displaying the respective department name.
SELECT AVG(SALARY) FROM EMP GROUP BY DEPARTMENT


--PART-B:-
--Count the number of employees living in Rajkot
SELECT COUNT(ENAME) FROM EMP WHERE CITY='RAJKOT'

--Display the difference between the highest and lowest salaries. Label the column DIFFERENCE.
SELECT MAX(SALARY)-MIN(SALARY) FROM EMP

--Display the total number of employees hired before 1st January, 1991.
SELECT COUNT(ENAME) FROM EMP WHERE JOININGDATE<'01-JAN-91'

--PART-C:-
--Count the number of employees living in Rajkot or Baroda.
SELECT COUNT(ENAME) FROM EMP WHERE CITY IN('RAJKOT','BARODA') 

--Display the total number of employees hired before 1st January, 1991 in IT department
SELECT COUNT(ENAME) FROM EMP WHERE JOININGDATE<'01-JAN-91' AND DEPARTMENT='IT'

--Find the Joining Date wise Total Salaries.
SELECT SUM(SALARY) FROM EMP GROUP BY JOININGDATE

--Find the Maximum salary department & city wise in which city name starts with ‘R’.
SELECT DEPARTMENT,CITY, MAX(SALARY) FROM EMP WHERE CITY LIKE 'R%' GROUP BY DEPARTMENT,CITY

--EXTRA
--CALCULATE AVERAGE SALARY FOR EACH CITY
SELECT AVG(SALARY),CITY FROM EMP GROUP BY CITY