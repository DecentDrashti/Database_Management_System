--Lab-6

--STRING FUNCTION
--Part – A:
--1. Find the length of following. (I) NULL (II) ‘ hello ’ (III) Blank
Select LEN('NULL'),LEN(' hello '),LEN('Blank')

--2. Display your name in lower & upper case.
Select LOWER('DRASHTI'), UPPER('Drashti')

--3. Display first three characters of your name.
SELECT LEFT('DRASHTI',3)

--4. Display 3rd to 10th character of your name.
SELECT SUBSTRING('Drashti Ruparelia', 3, 8)

--5. Write a query to convert ‘abc123efg’ to ‘abcXYZefg’ & ‘abcabcabc’ to ‘ab5ab5ab5’ using REPLACE.
SELECT REPLACE('abc123efg','abc123efg','abcXYZefg')

--6. Write a query to display ASCII code for ‘a’,’A’,’z’,’Z’, 0, 9.
SELECT ASCII('A'), ASCII('a'),ASCII('Z'), ASCII('z'),ASCII('0'),ASCII('9')
--7. Write a query to display character based on number 97, 65,122,90,48,57.
SELECT CHAR('97'),CHAR('65'),CHAR('122'),CHAR('90'),CHAR('48'),CHAR('57')

--8. Write a query to remove spaces from left of a given string ‘hello world ‘.
SELECT LTRIM(' HELLO WORLD')

--9. Write a query to remove spaces from right of a given string ‘ hello world ‘.
SELECT RTRIM('HELLO WORLD ')
--10. Write a query to display first 4 & Last 5 characters of ‘SQL Server’.
SELECT LEFT('SQL Server',4),LEFT('SQL Server',5)

--11. Write a query to convert a string ‘1234.56’ to number (Use cast and convert function).
SELECT CONVERT(int,1234.56)

--12. Write a query to convert a float 10.58 to integer (Use cast and convert function).
SELECT CONVERT(FLOAT,10.58)

--13. Put 10 space before your name using function.
SELECT (SPACE(10)+'DARSHAN UNIVERSITY')

--14. Combine two strings using + sign as well as CONCAT ().
SELECT CONCAT('Darshan','-','University')
SELECT 'Darshan'+'University'

--15. Find reverse of “Darshan”.
SELECT REVERSE('Darshan')

--16. Repeat your name 3 times.
SELECT REPLICATE('Darshan',3)



--Part – B: Perform following queries on Student table of practical no 5.
--1. Find the length of FirstName and LastName columns.
--2. Display FirstName and LastName columns in lower & upper case.
--3. Display first three characters of FirstName column.
--4. Display 3rd to 10th character of Website column.
--5. Write a query to display first 4 & Last 5 characters of Website column.


--Part – C: Perform following queries on Student table of practical no 5.
--1. Put 10 space before FirstName using function.
--2. Combine FirstName and LastName columns using + sign as well as CONCAT ().
--3. Combine all columns using + sign as well as CONCAT ().
--4. Find reverse of FirstName column.
--5. Repeat FirstName column 3 times
--6. Give the Names which contains 5 characters.
--7. Combine the result as <FirstName> Lives in <City>.
--8. Combine the result as Student_ID of < FirstName > is <StuID> .
