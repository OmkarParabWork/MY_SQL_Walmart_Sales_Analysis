# Aim of This Project
&nbsp;&nbsp; The major aim of this project is to gain insight into the sales data of Walmart to understand the different factors that affect sales of the different branches.

# About Data
The dataset was obtained from the Kaggle Walmart Sales Forecasting Competition.
Data Description:
| Column                  | Description                             | Data Type      |
|-------------------------|-----------------------------------------|----------------|
| invoice_id              | Invoice of the sales made               | VARCHAR(30)    |
| branch                  | Branch at which sales were made         | VARCHAR(5)     |
| city                    | The location of the branch              | VARCHAR(30)    |
| customer_type           | The type of the customer                | VARCHAR(30)    |
| gender                  | Gender of the customer making purchase  | VARCHAR(10)    |
| product_line            | Product line of the product solf        | VARCHAR(100)   |
| unit_price              | The price of each product               | DECIMAL(10, 2) |
| quantity                | The amount of the product sold          | INT            |
| VAT                     | The amount of tax on the purchase       | FLOAT(6, 4)    |
| total                   | The total cost of the purchase          | DECIMAL(10, 2) |
| date                    | The date on which the purchase was made | DATE           |
| time                    | The time at which the purchase was made | TIMESTAMP      |
| payment_method          | The total amount paid                   | DECIMAL(10, 2) |
| cogs                    | Cost Of Goods sold                      | DECIMAL(10, 2) |
| gross_margin_percentage | Gross margin percentage                 | FLOAT(11, 9)   |
| gross_income            | Gross Income                            | DECIMAL(10, 2) |
| rating                  | Rating                                  | FLOAT(2, 1)    |

# Approach Used
1)Data Cleaning: Looking for Null values or errors in data sets

2)Adding Columns: Add new columns according to the requirement

# Business Questions To Answer
# Generic Question
1)How many unique cities does the data have?

2)In which city is each branch?
# Product
1)How many unique product lines does the data have?

2)What is the most common payment method?

3)What is the most selling product line?

4)What is the total revenue by month?

5)What month had the largest COGS?

6)What product line had the largest revenue?

7)What is the city with the largest revenue?

8)What product line had the largest VAT?

9)Fetch each product line and add a column to those product lines showing "Good" and "Bad". Good if it's greater than average sales

10)Which branch sold more products than the average product sold?

11)What is the most common product line by gender?

# Sales
1)Number of sales made in each time of the day per weekday

2)Which of the customer types brings the most revenue?

3)Which city has the largest tax percent/ VAT (Value Added Tax)?

4)Which customer type pays the most in VAT?

# Customer
1)How many unique customer types does the data have?

2)How many unique payment methods does the data have?

3)What is the most common customer type?

4)Which customer type buys the most?

5)What is the gender of most of the customers?

60What is the gender distribution per branch?

7)Which time of the day do customers give most ratings?

8)Which time of the day do customers give most ratings per branch?

9)Which day fo the week has the best avg ratings?

10)Which day of the week has the best average ratings per branch?




12)What is the average rating of each product line?
