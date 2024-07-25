--select from where group by having order by
--lab-8
--part-A
create table sales_data(
region varchar(45),
products varchar(20),
sales_amount int,
years int);

insert into sales_data values
('North America ','Watch',1500,2023),
('Europe','Mobile',1200,2023),
('Asia','Watch',1800,2023),
('North America','TV',900,2024),
('Europe','Watch',2000,2024),
('Asia','Mobile',1000,2024),
('North America','Mobile',1600,2023),
('Europe','TV',1500,2023),
('Asia','TV',1100,2024),
('North America','Watch',1700,2024);

select *from sales_data

--ctrl kc for comment
--1. Display Total Sales Amount by Region
select sum(sales_amount) as total_sales from sales_data group by region

--2. Display Average Sales Amount by Product
select avg(sales_amount) as avg_sales from sales_data group by products

--3. Display Maximum Sales Amount by years
select max(sales_amount) as maximum from sales_data group by years

--4. Display Minimum Sales Amount by Region and years
select min(sales_amount) as minimum from sales_data group by region,years

--5. Count of Products Sold by Region
select region,count(products) as counts from sales_data group by region

--6. Display Sales Amount by years and Product
select sum(sales_amount) as total ,years,products from sales_data group by years, products

--7. Display Regions with Total Sales Greater Than 5000
select sum(sales_amount) as total_sales from sales_data group by region having sum(sales_amount)>5000

--8. Display Products with Average Sales Less Than 10000
select products, avg(sales_amount) from sales_data group by products having avg(sales_amount)<10000

--9. Display years with Maximum Sales Exceeding 500
select years,max(sales_amount) as max from sales_data group by years having max(sales_amount)>500

--10. Display Regions with at Least 3 Distinct Products Sold.
select count(distinct products) from sales_data group by region  having count(distinct products)>=3

--11. Display years with Minimum Sales Less Than 1000
select years, min(sales_amount) as min from sales_data group by years having min(sales_amount)<1000 

--12. Display Total Sales Amount by Region for years 2023, Sorted by Total Amount
select region,sum(sales_amount) as sumation from sales_data where years=2023 group by region
order by sum(sales_amount)


--Part – B:
--1. Display Count of Orders by Year and Region, Sorted by Year and Region
select years,region,count(sales_amount) as counting from sales_data 
group by years,region 
order by years,region

--2. Display Regions with Maximum Sales Amount Exceeding 1000 in Any Year, Sorted by Region
select region ,max(sales_amount) from sales_data 
group by region 
having max(sales_amount)>1000 
order by region

--3. Display Years with Total Sales Amount Less Than 1000, Sorted by Year Descending
select years, sum(sales_amount) as total from sales_data
group by years
having sum(sales_amount)<1000
order by years desc

--4. Display Top 3 Regions by Total Sales Amount in Year 2024
select top 3 region ,sum(sales_amount) from sales_data where years=2024
group by region order by sum(sales_amount)

--Part – C:
--1. Display Products with Average Sales Amount Between 1000 and 2000, Ordered by Product Name
select products,avg(sales_amount) from sales_data  
group by products having avg(sales_amount) between 1000 and 2000 order by products

--2. Display Years with More Than 5 Orders from Each Region
select years,region from sales_data group by years,region having count(products)>5

--3. Display Regions with Average Sales Amount Above 1500 in Year 2023 sort by amount in descending.
select region,avg(sales_amount) as avg_sal
from sales_data
where years=2023
group by region
having avg(sales_amount)>1500
order by avg(sales_amount) desc

--4. Find out region wise duplicate product.
select products,region ,count(products) from sales_data
group by region,products
having count(products)>1

--5. Find out region wise highest sales amount.
select region ,max(sales_amount) as highest_sal
from sales_data
group by region