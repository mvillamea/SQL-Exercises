-- Exercise 16: Pattern Matching

/*Find out all customers who have first name and last name
of 5 characters each and last name starts with “a/b/c/d” */

SELECT * 
FROM customer 
WHERE customer_name ~* '^[a-z]{5}\s(a|b|c|d)[a-z]{4}$' ;

/* Create a table “zipcode” and insert the below data in it:

						PIN/ZIP codes
						234432
						23345
						sdfe4
						123&3
						67424
						7895432
						12312
Find out the valid zipcodes from this table (5 or 6 Numeric characters) */

--create the table
CREATE TABLE zipcode (PIN_ZIP_codes VARCHAR ); 

-- insert the values of the table
INSERT INTO zipcode 
VALUES ('234432'), ('23345'), ('sdef4'), ('123&3'), ('67424'), ('7895432'), ('12312');

-- get valid zipcodes
SELECT * 
FROM zipcode
WHERE pin_zip_codes ~*'^[0-9]{5,6}$';
