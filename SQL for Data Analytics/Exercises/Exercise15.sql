-- Exercise 15: Dates

/* Find out the current age of “Batman” who was born on “April 6, 1939”
   in Years, months and days  */

SELECT AGE(current_date, '1939-04-06');

/* Analyze and find out the monthly sales of sub-category chair.
Do you observe any seasonality in sales of this sub-category  */

SELECT EXTRACT(month from order_date) AS Month, SUM(sales) AS Total_monthly_sales
FROM sales 
WHERE product_id IN (SELECT product_id 
					 FROM product
					 WHERE sub_category='Chairs')
GROUP BY Month
ORDER BY Total_monthly_sales;

-- The months with highest sales were december, september, november and may
-- There's no seasonality


