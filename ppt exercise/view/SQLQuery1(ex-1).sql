--exercise of view(create)

--1st
create view faculty_info
as 
select name,branch from faculty

select*from faculty_info

--2nd
create view CSE_dept 
as
select *from faculty where branch='Computer'
select*from CSE_dept

--3rd
create view nam
as
select *from faculty where name like'%tel'
select *from nam

--4th
create view sal_data
as 
select branch,max(mobile)as highest_salary from faculty group by branch
select *from sal_data

--5th
create view vw_civil
as
select *from faculty where branch='Civil'
select *from vw_civil

--6th
insert into view_name values

--7th
update vw_civil set name='manish patel' where id=199

--8th
delete vw_civil where id=199

--renaming
sp_rename 'vw_civil','civil'