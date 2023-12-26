create database if not exists salesDataWalmart;

use salesDataWalmart;

------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------- Creating Sructure of the table --------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------

create table if not exists sales(
	invoice_id varchar(30) not null primary key,
    branch varchar(5) not null,
    city varchar(30) not null,
    customer_type varchar(30) not null,
    gender varchar(10) not null,
	product_line varchar(100) not null,
    unit_price decimal(10,2) not null,
    quantity int not null,
    vat float(6,4) not Null,
    total Decimal(12,4) not null,
    date datetime not null,
    time time not null,
    payment_method varchar(15) not null,
    cogs decimal(10,2) not null,
    gross_margin_pct float(11,9),
    gross_income decimal(12,4) not null,
    rating float(2,1)
);

desc sales;

---------------------------------------------------------------------------------------------------------------------------
----------------------------------------------- Creating New Columns ------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------

---------- (1) Time of day ----------

select time,
		(Case 
				when time between "00:00:00" and "11:59:00" then "Morning"
				when time between "12:00:00" and "15:59:00" then "Afternoon"
                else "Evening"
			end) as date_of_time  
from sales;

Alter table sales add column time_of_day varchar(50); 

SET SQL_SAFE_UPDATES = 0;

update sales
set time_of_day = (
	Case 
		when time between "00:00:00" and "11:59:00" then "Morning"
		when time between "12:00:00" and "15:59:00" then "Afternoon"
		else "Evening"
	end
);

select * from sales;


--------------------- (2) Day_name -------------------------------------------------------

select 
date,
dayname(date) as Day_Name from sales;

alter table sales
add column day_name varchar(30);

update sales
set day_name=dayname(date);

select * from sales;


------------------------ (3) Month_name ---------------------------------------------

select
date,
monthname(date)
from sales;

alter table sales
add column month_name varchar(30);

update sales
set month_name=monthname(date);

select * from sales;


