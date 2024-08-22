--lab-11
--part-A
--stu_info table has been created
select*from EMPLOYEE_MASTER

--1. Combine information from student and result table using cross join or Cartesian product.
select *from Stu_Info cross join Result

--2. Perform inner join on Student and Result tables.
select  stu_info.Rno,name,branch,result.spi from Stu_Info 
inner join Result 
on stu_info.rno=result.rno
--rno bey ma same che so ene stu_info. apvu pade baki unique name ma dot vadu n karye to chle

--3. Perform the left outer join on Student and Result tables.
select  stu_info.Rno,name,branch,result.spi from Stu_Info 
left join Result 
on stu_info.rno=result.rno
--left/left outer is same

--4. Perform the right outer join on Student and Result tables.
select  stu_info.Rno,name,branch,result.spi from Stu_Info 
right join Result 
on stu_info.rno=result.rno

--5. Perform the full outer join on Student and Result tables.
select  stu_info.Rno,name,branch,result.spi from Stu_Info 
full join Result 
on stu_info.rno=result.rno

--6. Display Rno, Name, Branch and SPI of all students.
select  stu_info.Rno,name,branch,result.spi from Stu_Info 
join Result 
on stu_info.rno=result.rno

--7. Display Rno, Name, Branch and SPI of CE branch’s student only.
select  stu_info.Rno,name,branch,result.spi from Stu_Info 
join Result 
on stu_info.rno=result.rno where branch='CE'

--8. Display Rno, Name, Branch and SPI of other than EC branch’s student only.
select  stu_info.Rno,name,branch,result.spi from Stu_Info 
inner join Result 
on stu_info.rno=result.rno where branch='EC'

--9. Display average result of each branch.
select  branch,avg(result.spi) as avg_spi from Stu_Info 
join Result 
on stu_info.rno=result.rno  group by branch

--10. Display average result of CE and ME branch.
select  branch,avg(result.spi) as avg_spi from Stu_Info 
join Result 
on stu_info.rno=result.rno  where branch in('CE','ME') group by branch

--Part – B:

--1. Display average result of each branch and sort them in ascending order by SPI.
select  branch,avg(result.spi) as avg_spi from Stu_Info 
join Result 
on stu_info.rno=result.rno 
group by branch 
order by avg(spi)

--2. Display highest SPI from each branch and sort them in descending order.
select  branch,max(result.spi) as max_spi from Stu_Info 
join Result 
on stu_info.rno=result.rno 
group by branch 
order by max(spi)

--Part – C:
--1. Retrieve the names of employee along with their manager’s name from the Employee table
select *from EMPLOYEE_MASTER M
left join EMPLOYEE_MASTER E
on E.ManagerNo=M.EmployeeNo