--lab-12
--part-A:-
select*from person
select*from dept
--1. Find all persons with their department name & code.
select personname,departmentname,departmentcode 
from person join dept on person.DepartmentID =dept.departmentid 

--2. Find the person's name whose department is in C-Block.
select personname,departmentname 
from person join dept on person.DepartmentID =dept.departmentid 
where location='c-block'

--3. Retrieve person name, salary & department name who belongs to Jamnagar city.
select personname,salary,departmentname 
from person join dept on person.DepartmentID =dept.departmentid 
where city='jamnagar'

--4. Retrieve person name, salary & department name who does not belong to Rajkot city.
select personname,departmentname 
from person join dept on person.DepartmentID =dept.departmentid 
where city='rajkot'

--5. Retrieve person’s name of the person who joined the Civil department after 1-Aug-2001.
select personname,departmentname 
from person join dept on person.DepartmentID =dept.departmentid 
where JoiningDate>'2001-08-01' and DepartmentName='civil'

--6. Find details of all persons who belong to the computer department.
select personname,departmentname 
from person join dept on person.DepartmentID =dept.departmentid 
where DepartmentName='computer'

--7. Display all the person's name with the department whose joining date difference 
--with the current date is more than 365 days.
select personname,departmentname 
from person 
left join dept 
on person.DepartmentID =dept.departmentid 
where datediff(day,JoiningDate,getdate())>365

--8. Find department wise person counts.
select departmentname,count(personname) 
from person 
join dept 
on person.DepartmentID =dept.departmentid 
group by departmentname

--9. Give department wise maximum & minimum salary with department name.
select departmentname,max(salary),min(salary)
from person 
join dept 
on person.DepartmentID =dept.departmentid 
group by departmentname

--10. Find city wise total, average, maximum and minimum salary.
select city,sum(salary) as max ,avg(salary) as avg ,min(salary)as min
from person 
join dept 
on person.DepartmentID =dept.departmentid 
group by city

--11. Find the average salary of a person who belongs to Ahmedabad city.
select avg(salary) as avg 
from person 
join dept 
on person.DepartmentID =dept.departmentid 
where city='Ahemdabad'

--12. Produce Output Like: <PersonName> lives in <City> and works in <DepartmentName> Department. (In 
--single column)
SELECT CONCAT(P.PersonName,' lives in ',P.City,' and works in ',D.DepartmentName,' Department.')
FROM PERSON P
JOIN DEPT D 
ON P.DepartmentID = D.DepartmentID

--Part – B:
--1. Produce Output Like: <PersonName> earns <Salary> from <DepartmentName> department monthly. (In 
--single column)
--2. Find city & department wise total, average & maximum salaries.
--3. Find all persons who do not belong to any department.
--4. Find all departments whose total salary is exceeding 100000.
--Part – C:
--1. List all departments who have no person.
--2. List out department names in which more than two persons are working.
--3. Give a 10% increment in the computer department employee’s salary. (Use Update)


