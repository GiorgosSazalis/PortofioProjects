-- 01 Create Database
create database Sazalis_project;

-- 02 Sales by Category
select category, sum(sales) as total_sales
from orders
group by Category
order by 2 desc;

-- 03 Non-profit
select concat(category, ', ',sub_category,', ', product_name) as details, discount, profit
from orders
where profit < 0
order by 3 desc;

-- 04 Average of profit by subcategory
select Sub_Category, avg(profit) as profit_average
from orders
group by Sub_Category
order by 2 desc;
 
-- 05 Average of profit by country
select c.Country, avg(o.Profit) as profit_average
from customers c join orders o on c.Row_ID = o.Row_ID
group by c.Country
order by 2 desc;

-- 06 Searching for customers like M__mm__e
select distinct Customer_Name, concat(region,',',country,',',state,',',city)
from customers
where Customer_Name regexp '^M.*mm.*e$';

-- 07 Total sales
select sum(sales)
from orders;

-- 08 Sales percentage by region
select c.region, (sum(o.sales)/ 12616115)*100 as sales_perc
from customers c join orders o on c.Row_ID = o.Row_ID
group by c.region
order by 2 desc; 

-- 09 Sales in every city of regions Central, South, Canada with customers more than 20
select c.City, count(Customer_Name) as customer_number, sum(o.Sales) as sales
from customers c join orders o on c.Row_ID = o.Row_ID
where c.Region in ('Central', 'South', 'Canada') 
group by c.City
having customer_number > 20
order by 2 desc; 

-- 10 Late orders of the year 2013
select distinct o.Order_ID, c.Customer_Name, datediff(Ship_Date, Order_Date) as late_orders
from customers c join orders o on c.Row_ID = o.Row_ID
where o.Order_Date between '2013-01-01' and '2013-12-31' and datediff(o.Ship_Date, o.Order_Date) >= 6
order by 3 desc; 





