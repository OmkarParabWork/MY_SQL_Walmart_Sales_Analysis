/*
Sales Questions




*/
use salesdatawalmart;

------------------------ 1) Number of sales made in each time of the day per weekend -----------

select 
date,
day_name,
count(invoice_id) as Total_Sales from sales
where day_name="Sunday" or day_name="Saturday"
group by 1,2
order by max(date);


------------------------- 2) Which of the customer types brings the most revenue? --------------

select
customer_type,
round(sum(total),2) as Total_revenue
from sales
group by customer_type
order by 2 desc
limit 1;

------------------------- 3) Which city has the largest tax percent/ VAT (Value Added Tax)? --------------

select
city,
round(avg(vat)) as max_avg_vat
from sales
group by 1
order by 2 desc
limit 1;

------------------------- 4) Which customer type pays the most in VAT? ------------------------------------

select 
customer_type,
round(avg(vat)) as max_avg_vat
from sales
group by 1
order by 2 desc
limit 1;


