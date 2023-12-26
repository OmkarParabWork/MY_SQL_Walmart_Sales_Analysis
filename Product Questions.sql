/*
Product Questions 
*/


------------------- 1)How many unique product lines does the data have? --------------------------

select distinct(product_line) from sales;

------------------- 2)What is the most common payment method? ------------------------------------

select payment_method, count(payment_method) 
from sales
group by payment_method
order by count(payment_method) desc 
limit 1;

------------------- 3)What is the most selling product line? ---------------------------------------

select (product_line),count(PRODUCT_LINE) AS NO_OF_ORDER   from sales
group by product_line 
order by 2 desc
limit 1;

------------------- 4)What is the total revenue by month? -------------------------------------------------
select month_name,sum(total) as Total_Revenue from sales
group by month_name
order by max(date);
------------------- 5)What month had the largest COGS?---------------------------------------------------

select month_name,sum(COGS) as max_cogs from sales
group by month_name
order by max_cogs desc
limit 1;

------------------- 6)What product line had the largest revenue? ---------------------------------------
select product_line,sum(total) as Total_revenue
from sales
group by product_line
order by Total_revenue desc
limit 1;

------------------- 7)What is the city with the largest revenue? ------------------------------------------

use salesdatawalmart;

select
city,sum(total) as Total_revenue
from sales
group by city
order by Total_revenue desc
limit 1;

------------------- 8) What product line had the largest VAT? ---------------------------------------------

select product_line, sum(vat) as Total_TAX
from sales
group by product_line
order by Total_TAX desc
limit 1;

------------------- 9)Fetch each product line and add a column to those product line showing "Good", "Bad". Good if its greater than average sales--------
select 
product_line,
(CASE
	WHEN AVG(TOTAL)>(SELECT avg(TOTAL) FROM SALES) THEN "GOOD"
    ELSE "BAD"
END)
FROM sales
group by PRODUCT_LINE;

------------------ 10)Which branch sold more products than average product sold? --------------------------------------------------
SELECT BRANCH,avg(QUANTITY)
FROM sales
group by BRANCH
HAVING avg(QUANTITY)>(SELECT AVG(QUANTITY) FROM SALES)
ORDER BY 2 DESC;

------------------ 11)What is the most common product line by gender? ----------------------------------------------

SELECT GENDER,PRODUCT_LINE,count(GENDER) AS GENDER
FROM SALES 
group by gENDER,PRODUCT_LINE 
order by 2 DESC
LIMIT 2;

------------------- 12)What is the average rating of each product line?----------------------------------------------

select PRODUCT_LINE,avg(RATING) AS AVERAGE_RATING_FROM_10 
FROM SALES
GROUP BY 1
ORDER BY 2 DESC