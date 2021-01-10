-- Exercise 12

/* Create a View which contains order_line, Product_id, sales and
discount value of the first order date in the sales table and name
it as “Daily_Billing” */

CREATE VIEW Daily_Billing AS
SELECT order_line,
       product_id,
       sales,
       discount
FROM sales 
WHERE order_date IN (SELECT MIN(order_date)
					 FROM sales);
					 
SELECT * FROM Daily_Billing;

-- Delete that view

DROP VIEW Daily_Billing;