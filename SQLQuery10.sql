--lab-10
--bajuna column mathi tables ma right click new
--part-A:-
create table student_info(
RNo int,
Name varchar(25),
Branch varchar(15),
SPI decimal(8,2),
Bklog int);

insert into student_info values
(101,'Raju', 'CE', 8.80,0),
(102, 'Amit', 'CE' ,2.20,3),
(103, 'Sanjay' ,'ME',1.50,6),
(104, 'Neha', 'EC',7.65,1),
(105, 'Meera', 'EE',5.52,2),
(106, 'Mahesh', 'EC',4.50,3);
select * from student_info
select *from personal

--1. Create a view Personal with all columns.
create view personal as select *from student_info

--2. Create a view Student_Details having columns Name, Branch & SPI.
create view Student_details as select Name,Branch,SPI from student_info
select *from student_details

--3. Create a view AcademicData having columns RNo, Name, Branch.
create view AcademicData 
as select Rno,Name,Branch 
from student_info
select *from AcademicData

--4. Create a view Student_ bklog having all columns but students whose bklog more than 2.
create view Student_bklog as select* from student_info where bklog>2
select *from Student_bklog

--5. Create a view Student_Pattern having RNo, Name & Branch columns in which Name consists of four 
--letters.
create view Student_Pattern as select RNo,Name,Branch from Student_info where name like '____'
select *from Student_Pattern

--6. Insert a new record to AcademicData view. (107, Meet, ME)
insert into academicdata values
(107, 'Meet', 'ME')
select *from AcademicData

--7. Update the branch of Amit from CE to ME in Student_Details view.
Update Student_details set branch='me' where name='amit'
select *from student_details

--8. Delete a student whose roll number is 104 from AcademicData view.
delete from AcademicData where rno='104'
select *from AcademicData

--Part – B:
--1. Create a view that displays information of all students whose SPI is above 8.5
create view display as select*from student_info where spi>8.5
select*from display

--2. Create a view that displays 0 backlog students.
create view displays as select*from student_info where bklog=0

--3. Create a view Computerview that displays CE branch data only.
create view computerview as select *from student_info where branch='CE'
select*from computerview

--Part – C:
--1. Create a view Result_EC that displays the name and SPI of students with SPI less than 5 of branch EC.
create view Result_EC as select name,spi from student_info where SPI<5 and branch='EC'
select *from Result_EC

--2. Update the result of student MAHESH to 4.90 in Result_EC view.
Update Result_EC set spi=4.9 where name='mahesh'
select *from Result_EC

--3. Create a view Stu_Bklog with RNo, Name and Bklog columns in which name starts with ‘M’ and having 
--bklogs more than 5.
create view Stu_bklog as select RNo, Name,Bklog from student_info where name like 'M%' and bklog>5
select *from stu_bklog

--4. Drop Computerview form the database
drop view computerview 
