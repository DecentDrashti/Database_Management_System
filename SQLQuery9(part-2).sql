-- LAB_9 : (SET_OPERATORS)

-- PART-A :

CREATE TABLE COMPUTER(
	ROLLNO INT,
	NAME VARCHAR(50)
);

INSERT INTO COMPUTER VALUES
(101, 'Ajay'),
(109, 'Haresh'),
(115, 'Manish');

SELECT *FROM COMPUTER

CREATE TABLE ELECTRICAL(
	ROLLNO INT,
	NAME VARCHAR(50)
);

INSERT INTO ELECTRICAL VALUES
(105, 'Ajay'),
(107, 'Mahesh'),
(115, 'Manish');

SELECT *FROM ELECTRICAL

--1. Display name of students who is either in Computer or in Electrical.
SELECT NAME FROM COMPUTER
UNION ALL
SELECT NAME FROM ELECTRICAL;

--2. Display name of students who is either in Computer or in Electrical including duplicate data.
SELECT NAME FROM COMPUTER
INTERSECT
SELECT NAME FROM ELECTRICAL;

--3. Display name of students who is in both Computer and Electrical.
SELECT NAME FROM COMPUTER
INTERSECT
SELECT NAME FROM ELECTRICAL;

--4. Display name of students who are in Computer but not in Electrical.
SELECT NAME FROM COMPUTER
EXCEPT
SELECT NAME FROM ELECTRICAL;

--5. Display name of students who are in Electrical but not in Computer.
SELECT NAME FROM ELECTRICAL
EXCEPT
SELECT NAME FROM COMPUTER;

--6. Display all the details of students who are either in Computer or in Electrical.
SELECT ROLLNO,NAME FROM COMPUTER
UNION
SELECT ROLLNO,NAME FROM ELECTRICAL;

--7. Display all the details of students who are in both Computer and Electrical.
SELECT c.ROLLNO,c.NAME
FROM COMPUTER c
JOIN ELECTRICAL e ON c.NAME = e.NAME;

--part-B:-
--1. Display name of persons who is either Employee or Customer.
--2. Display name of persons who is either Employee or Customer including duplicate data.
--3. Display name of persons who is both Employee as well as Customer.
--4. Display name of persons who are Employee but not Customer.
--5. Display name of persons who are Customer but not Employee.
--Part – C: 
--1. Perform all the queries of Part-B but display ID and Name columns instead of Name only