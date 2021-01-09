-- Exercise 10

CREATE TABLE sales_2015 AS
SELECT *
FROM sales
WHERE ship_date BETWEEN '2015-01-01' AND '2015-12-31';

CREATE TABLE customer_20_60 AS
SELECT *
FROM customer
WHERE age BETWEEN 20 AND 60;

/* Find the total sales done in every state for customer_20_60 and
sales_2015 table */

SELECT SUM(s.sales) AS Total_sales, c.state
FROM  customer_20_60 AS c
RIGHT JOIN sales_2015 AS s
ON c.customer_id = s.customer_id
GROUP BY c.state;

/* Get data containing Product_id, product name, category, total sales
value of that product and total quantity sold. */

SELECT p.product_id, p.product_name,
SUM(s.sales) AS Total_sales, p.category, 
SUM(s.quantity)
FROM  product AS p
LEFT JOIN sales AS s
ON p.product_id = s.product_id
GROUP BY p.product_id;
