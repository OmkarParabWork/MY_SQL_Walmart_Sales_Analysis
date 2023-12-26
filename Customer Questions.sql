/*
Customer Questions
*/

use salesdarawalmart;

----------------------- 1)How many unique customer types does the data have? ----------------------------

select 
distinct(customer_type) 
from sales;

----------------------- 2)How many unique payment methods does the data have? ---------------------------

select 
distinct(payment_method)
from sales;


----------------------- 3)What is the most common customer type? ----------------------------------------

select 
customer_type,
count(*) as Total_customer
from sales
group by customer_type
order by 2 desc
limit 1;

----------------------- 4)Which customer type buys the most? --------------------------------------------

select
customer_type,
count(*) as no_of_orders
from sales
group by customer_type
order by 2 desc
limit 1;

------------------------ 5)What is the gender of most of the customers? ----------------------------------

select 
gender,
count(*)
from sales
group by gender
order by 2 desc
limit 1;

------------------------- 6)What is the gender distribution per branch?------------------------------------

select
gender,
branch,
count(*)
from sales
group by gender,branch
order by branch,gender;

------------------------- 7)Which time of the day do customers give most ratings? -------------------------------

select
time_of_day,
avg(rating)
from sales
group by time_of_day
order by 2 desc
limit 1;

------------------------ 8)Which time of the day do customers give most ratings per branch? ---------------------------------

select branch,
time_of_day,
avg(rating) as avg_rating
from sales
where branch="A"
group by 1,2
order by 3 desc
limit 1;


select branch,
time_of_day,
avg(rating) as avg_rating
from sales
where branch="B"
group by 1,2
order by 3 desc
limit 1;


select branch,
time_of_day,
avg(rating) as avg_rating
from sales
where branch="C"
group by 1,2
order by 3 desc
limit 1;


------------------------ 9)Which day fo the week has the best avg ratings?------------------------------

select
day_name, 
avg(rating) as avg_rating
from sales
group by 1
order by 2 desc
limit 1;

----------------------- 10)Which day of the week has the best average ratings per branch? --------------
select
branch,
day_name,
avg(rating)
from sales
where branch = "A"
group by 1,2
order by 1,3 desc
limit 1;

select
branch,
day_name,
avg(rating)
from sales
where branch = "B"
group by 1,2
order by 1,3 desc
limit 1;

select
branch,
day_name,
avg(rating)
from sales
where branch = "C"
group by 1,2
order by 1,3 desc
limit 1;

----------------------------- 11)What is the average rating of each product line? -----------------------------
select 
product_line,
avg(rating) as average_rating 
from sales
group by 1
order by 2 desc;

