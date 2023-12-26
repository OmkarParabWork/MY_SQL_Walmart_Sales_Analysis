/*
Generic Question
1) How many unique cities does the data have?
2) In which city is each branch?
*/

use salesdatawalmart;
------------- (1) How many unique cities does the data have?----------------

select distinct(city) from sales;

------------- (2) In which city is each branch? ----------------
select  
distinct(city) as City,
branch
from sales;

