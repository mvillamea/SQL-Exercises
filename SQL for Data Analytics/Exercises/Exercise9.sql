-- Exercise 9

/* Make a dashboard showing the following figures for each product ID:
a) Total sales in $ (ordered by this column in descending order)
b) Total sales quantity
c) Number of orders
d) Max Sales Value
e) Min sales Value
f) Average sales value
*/

SELECT product_id, SUM(sales) AS Total_Sales, 
       SUM(quantity) AS Total_Sales_Quantity,
       COUNT(order_id) AS Number_Orders, 
	   MAX(sales) AS Max_Sales,
	   MIN(sales) AS Min_Sales, AVG(sales) AS Avg_sales
FROM sales
GROUP BY product_id
ORDER BY Total_sales DESC;

/* Get the list of product ID’s where the quantity of
product sold is greater than 10 */

SELECT product_id,  
       SUM(quantity) AS Total_Sales_Quantity
FROM sales
GROUP BY product_id
HAVING SUM(quantity)>10;
