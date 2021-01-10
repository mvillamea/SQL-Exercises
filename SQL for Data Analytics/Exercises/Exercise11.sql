-- Exercise 11

/* Get data with all columns of sales table, and customer name,
customer age, product name and category are in the same result set. */

SELECT c.customer_name, c.age, sp.*
FROM customer AS c
RIGHT JOIN ( SELECT s.*, p.product_name, p.category
		   FROM sales AS s
		   LEFT JOIN product AS p
		   ON s.product_id = p.product_id) AS sp
ON c.customer_id = sp.customer_id;