--Exercise 8

/* Find the sum of all sales value */
SELECT SUM(sales) FROM sales;

/* Find count of the number of customers in
south region with age between 20 and 30 */
SELECT COUNT(*) AS NumCustomer FROM customer
WHERE (region IN ('South')) AND (age BETWEEN 20 AND 30);

/* Find the average age of east region customers*/
SELECT AVG(age) AS Average_Age FROM customer
WHERE region = 'East';

/* Find the minimum and maximum aged customer
from Philadelfia */
SELECT MIN(age) AS Min_Age, MAX(age) AS Max_Age FROM customer
WHERE city = 'Philadelphia';

