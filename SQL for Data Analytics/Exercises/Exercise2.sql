--Exercise 2
--Inser the following data into science_class:
-- 1, 'Popeye', 30,
-- 2, 'Olive', 54,
-- 3, 'Brutus', 98

INSERT INTO science_class values
(1, 'Popeye', 30),
(2, 'Olive', 54),
(3, 'Brutus', 98);

-- Add the data from Student.csv to the table
COPY science_class FROM 'C:\Program Files\PostgreSQL\12\data\Data_copy\Student.csv' DELIMITER ',' CSV HEADER;

