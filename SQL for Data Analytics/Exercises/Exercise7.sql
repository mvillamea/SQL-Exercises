--Exercise 7

/*Retrieve all orders where discount value is greater than zero
ordered in descending order basis discount value*/
SELECT * FROM sales 
WHERE discount>0
ORDER BY discount DESC;

-- Limit the results of the above query to top 10
SELECT * FROM sales 
WHERE discount>0
ORDER BY discount DESC
LIMIT 10;