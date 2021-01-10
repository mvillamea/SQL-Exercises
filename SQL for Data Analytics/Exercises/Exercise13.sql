-- Exercise 13: Strings

/*Find Maximum length of characters in the Product name string
  from Product table*/

SELECT MAX(length(product_name))
FROM product;


/*Retrieve product name, sub-category and category from Product table
  and an additional column named “product_details” which contains a
  concatenated string of product name, sub-category and category */

SELECT product_name, sub_category, category,
       (product_name||', '||sub_category||', '||category) AS product_details
FROM product;


/* Analyze the product_id column and take out the three parts composing
the product_id in three different columns */

--Analyzing the product_id column
SELECT product_id, length(product_id)
FROM product
ORDER BY length(product_id) DESC;
--First part: Three characters UPPER CASE
--Second part: Two characters UPPER CASE
--Third part: Eight integer characters

--Solving the problem
SELECT
ltrim(product_id),
SUBSTRING(product_id FROM 0 FOR 4) AS first_part,
SUBSTRING(product_id FROM 5 FOR 2) AS second_part,
SUBSTRING(product_id FROM 8 FOR 8) AS third_part
FROM product;


/* List down comma separated product name where sub-category
   is either Chairs or Tables */

SELECT STRING_AGG(product_name, ',')
FROM product
WHERE sub_category IN ('Chairs', 'Tables');
