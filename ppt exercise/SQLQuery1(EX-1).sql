--exercise 1 of ppt of select:-
create table Faculties(
ID INT, NAME VARCHAR(50),MOBILE VARCHAR(50),CITY VARCHAR(20),BRANCH VARCHAR(50)
);
INSERT INTO Faculties VALUES
(258,'PRO.ANKIT PATEL','8325467914','JETPUR','ELECTRICAL'),
(742,'PRO.KETAN PARMAR','9145637891','BARODA','COMPUTER'),
(325,'PRO.MANAN DOSHI','9223251578','GONDAL','CIVIL'),
(125,'PRO.MITESH MANEK','7878454512','RAJKOT','COMPUTER'),
(312,'PRO.KETAN AKBARI','9824485641','RAJKOT','CIVIL'),
(457,'PRO.BHAVIN PATEL','9825411111','JAMNAGAR','MECHANICAL');

SELECT *FROM Faculties;
--2nd
SELECT NAME,BRANCH from Faculties
--3rd
select id,name,mobile from Faculties
--4th
select *from faculties where city='rajkot'
--5th
select *from faculties where id<300
--6th
select *from faculties where branch='computer'
--7th
select *from faculties where mobile is null
--8th
select top 2* from faculties 
--9th
select top 10 percent* from faculties
--10th
select distinct branch from faculties;
--11th
select distinct city from faculties;
--12th
select *from faculties where branch='computer'AND city='rajkot'
--13th
select *from faculties where id>300 and branch='civil'
--14th
select *from faculties where branch in('electrical','civil')
--15th
select *from faculties where branch='computer'or branch='civil' 
--16th
select *from faculties where city!='baroda'
--17th
select *from faculties where id between 100 and 400
               --*----*---