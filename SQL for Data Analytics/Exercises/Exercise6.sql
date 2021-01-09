--Exercise 6

-- In the database SuperMart_DB find the following:

-- Get the list of all cities where the region is north or east without any duplicates
SELECT DISTINCT city FROM customer
WHERE region IN ('North', 'East');

-- Get the list of all orders where the sales value is between 100 and 500.
SELECT order_id FROM sales
WHERE sales BETWEEN 100 AND 500;

-- Get the list of customers whose last name contains only 4 characters.
SELECT customer_id, customer_name FROM customer
WHERE customer_name LIKE '% ____';