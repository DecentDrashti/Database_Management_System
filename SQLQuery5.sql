--LIKE OPERATORS
DROP TABLE STUDENT
--PART-A:-
--CREATE A TABLE OF STUDENT
CREATE TABLE STUDENT(
StuID INT,
FirstName VARCHAR(25),
LastName VARCHAR(25),
Website VARCHAR(50),
City VARCHAR(25),
Address VARCHAR(100)
);

INSERT INTO STUDENT VALUES
(1011,'Keyur','Patel','techonthenet.com','Rajkot','A-303 "Vasant Kunj", Rajkot'),
(1022,'Hardik','Shah','digminecraft.com','Ahmedabad', '"Ram Krupa", Raiya Road'),
(1033,'Kajal','Trivedi','bigactivities.com','Baroda','Raj bhavan plot near garden'),
(1044,'Bhoomi','Gajera','checkyourmath.com','Ahmedabad','"Jig''s Home", Narol'),
(1055,'Harmit','Mitel','@me.darshan.com','Rajkot','B-55, Raj Residency'),
(1066,'Ashok','Jani',NULL,'Baroda','A502, Club House Building');

SELECT *FROM STUDENT

--Display the name of students whose name starts with ‘k’.
select *from student where FirstName like 'k%';

--Display the name of students whose name consists of five characters.
select *from student where firstname like '_____'

--Retrieve the first name & last name of students whose city name ends with a & contains six characters.
select firstname,lastname from student where city like '%a' and city like '%______%'

--Display all the students whose last name ends with ‘tel’.
select *from student where lastname like '%tel'

--Display all the students whose first name starts with ‘ha’ & ends with‘t’
select *from student where firstname like 'ha%%t'  

--Display all the students whose first name starts with ‘k’ and third character is ‘y’.
select *from student where firstname like 'k%_y%'

--Display the name of students having no website and name consists of five characters.
select *from student where website is null and firstname like '_____'

--Display all the students whose last name consist of ‘jer’.
select *from student where lastname like '%jer%'

--Display all the students whose city name starts with either ‘r’ or ‘b’.
select *from student where city like '[r,b]%'

--Display all the name students having websites.
select*from student where website not like 'null'

--Display all the students whose name starts from alphabet A to H.
select *from student where firstname like '[a-h]%'

--Display all the students whose name’s second character is vowel.
select *from student where firstname like'_[a,e,i,o,u]%'

--Display the name of students having no website and name consists of minimum five characters.
select *from student where website is null and firstname like '_____%'

--Display all the students whose last name starts with ‘Pat’. 
select *from student where lastname like 'pat%'

--Display all the students whose city name does not starts with ‘b'.
select *from student where city not like 'b%'



--PART-B:-
--Display all the students whose name starts from alphabet A or H.
select *from student where firstname like '[a,h]%'

--Display all the students whose name’s second character is vowel and of and start with H.
select *from student where firstname like 'h%_[a,e,i,o,u]%'

--Display all the students whose last name does not ends with ‘a’.
select *from student where lastname not like '%a'

--Display all the students whose first name starts with consonant.
select *from student where firstname not like '[a,e,i,o,u]%'

--Display all the students whose website contains .net
select *from student where website like '%.net%'
--square karu to evu thay ka to n ka to e ka to t


--PART-C:-
--Display all the students whose address consist of -.
select *from student where address like '%[-]%'

--Display all the students whose address contains single quote or double quote.
select *from student where address like '%[''"]%'
--ama e apostrophe s no single quote n count kare start ne end na j quote le eni mate ni query
--%''%''% or %"%"%

--Display all the students whose website contains @.
select *from student where website like '%[@]%'

--Display all the names those are either four or five characters.
select *from student where firstname like '_____'or firstname like '____'

--percentage pan include karavu hoi to
select *from student where website like '%[%]%'


