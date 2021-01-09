-- Exercise 4

-- Update the marks of Popeye to 45
UPDATE science_class
SET science_marks = 45
WHERE name = 'Popeye';

-- Delete the row containing details of students named Robb
DELETE FROM science_class
WHERE name = 'Robb'; 

-- Rename column 'Name' to 'student_name'
ALTER TABLE science_class
RENAME COLUMN name TO student_name;