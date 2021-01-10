-- Exercise 14: Mathematical functions

/* You are running a lottery for your customers.
   So, pick a list of 5 Lucky customers from
   customer table using random function */

SELECT SETSEED(0.4);

SELECT customer_id, customer_name,
       random() AS rand_client
FROM customer
ORDER BY rand_client
LIMIT 5;


/* Suppose you cannot charge the customer in fraction points.
So, for sales value of 1.63, you will get either 1 or 2.
In such a scenario, find out */
-- a) Total sales revenue if you are charging the lower integer value of sales always

SELECT SUM(FLOOR(sales)) FROM sales;

-- b) Total sales revenue if you are charging the higher integer value of sales always

SELECT SUM(CEIL(sales)) FROM sales;

-- c) Total sales revenue if you are rounding-off the sales always  

SELECT SUM(ROUND(sales)) FROM sales;


-- If we want to do it in the same table:

SELECT SUM(FLOOR(sales)) AS Floor_sales,
       SUM(CEIL(sales)) AS Ceil_sales,
	   SUM(ROUND(sales)) AS Round_sales
FROM sales;



