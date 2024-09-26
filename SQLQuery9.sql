--lab-9
--part-A
--1. Display details of students who are from computer department.
SELECT *FROM STUDENT_DATA
WHERE DID = (SELECT DID FROM DEPARTMENT WHERE DNAME = 'Computer');

--2. Displays name of students whose SPI is more than 8.
SELECT NAME
FROM STUDENT_DATA
WHERE no IN (
    SELECT RNO FROM ACADEMIC
    WHERE SPI > 8
);

--3. Display details of students of computer department who belongs to Rajkot city.
SELECT *FROM STUDENT_DATA
WHERE CITY = 'Rajkot' AND 
	  DID = (SELECT DID FROM DEPARTMENT WHERE DNAME = 'Computer');

--4. Find total number of students of electrical department.
SELECT COUNT(DID)
FROM STUDENT_DATA
WHERE DID = (SELECT DID FROM DEPARTMENT WHERE DNAME = 'Electrical');

--5. Display name of student who is having maximum SPI.
SELECT NAME
FROM STUDENT_DATA
WHERE NO = (
    SELECT RNO FROM ACADEMIC
    WHERE SPI = (SELECT MAX(SPI) FROM ACADEMIC)
);

--6. Display details of students having more than 1 backlog.
SELECT *FROM STUDENT_DATA
WHERE no IN (
    SELECT rno FROM ACADEMIC
    WHERE BKLOGs > 1
);



-- PART-B :

--1. Display name of students who are either from computer department or from mechanical department.
SELECT NAME
FROM STUDENT_DATA
WHERE DID IN (
    SELECT DID FROM DEPARTMENT
    WHERE DNAME IN ('Computer', 'Mechanical')
);

--2. Display name of students who are in same department as 102 studying in.
SELECT NAME
FROM STUDENT_DATA
WHERE DID = (
    SELECT DID FROM STUDENT_DATA
    WHERE NO = 102
);



-- PART-C :

--1. Display name of students whose SPI is more than 9 and who is from electrical department.
SELECT NAME
FROM STUDENT_DATA
WHERE NO IN (
	SELECT RNO FROM ACADEMIC
	WHERE SPI > 9
)	
AND DID = (
	SELECT DID FROM DEPARTMENT
	WHERE DNAME = 'Electrical'
);

--2. Display name of student who is having second highest SPI.
SELECT NAME
FROM STUDENT_DATA
WHERE NO = (
    SELECT RNO FROM ACADEMIC
    WHERE SPI = (
        SELECT MAX(SPI) FROM ACADEMIC
        WHERE SPI < (
            SELECT MAX(SPI) FROM ACADEMIC
        )
    )
);

--3. Display city names whose students branch wise SPI is 9.2
SELECT DISTINCT CITY
FROM STUDENT_DATA
WHERE DID IN (
    SELECT DID FROM ACADEMIC a
    JOIN STUDENT_DATA s ON a.RNO = s.NO
    GROUP BY s.DID
    HAVING AVG(a.SPI) = 9.2
);