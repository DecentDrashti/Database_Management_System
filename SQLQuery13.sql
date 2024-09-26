--lab-13
--part-A
CREATE TABLE City (
    CityID INT PRIMARY KEY,
    Name VARCHAR(100) UNIQUE,
    Pincode INT NOT NULL,
    Remarks VARCHAR(255)
);

CREATE TABLE Village (
    VID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    CityID INT,
    FOREIGN KEY (CityID) REFERENCES City(CityID)
);

INSERT INTO City (CityID, Name, Pincode, Remarks) VALUES
(1, 'Rajkot', 360005, 'Good'),
(2, 'Surat', 335009, 'Very Good'),
(3, 'Baroda', 390001, 'Awesome'),
(4, 'Jamnagar', 361003, 'Smart'),
(5, 'Junagadh', 362229, 'Historic'),
(6, 'Morvi', 363641, 'Ceramic');

INSERT INTO Village (VID, Name, CityID) VALUES
(101, 'Raiya', 1),
(102, 'Madhapar', 1),
(103, 'Dodka', 3),
(104, 'Falla', 4),
(105, 'Bhesan', 5),
(106, 'Dhoraji', 5);

select *from village
select *from city

--1. Display all the villages of Rajkot city.
select village.name 
from village join city 
on city.CityID=city.cityid 
where city.name='rajkot'

--2. Display city along with their villages & pin code.
select village.name,city.name,city.pincode
from city left join village 
on city.CityID=village.cityid 

--3. Display the city having more than one village.
select city.name
from city join village 
on city.CityID=village.cityid 
group by city.name
having count(vid)>1

--4. Display the city having no village.
select count(vid) as numbers,city.name
from city left join village 
on city.CityID=village.cityid 
group by city.name
having count(vid)<1

--5. Count the total number of villages in each city.
select count(vid) as numbers,city.name
from city left join village 
on city.CityID=village.cityid 
group by city.name

--6. Count the number of cities having more than one village.
select count(vid) as numbers,city.name
from city left join village 
on city.CityID=village.cityid 
group by city.name
having count(vid)>1

--constraint or condition design ma deva mate right click check constraints add expression ma condition
select *from Stu_master