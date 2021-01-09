--Exercise 3

--Retrieve all data from from the table 'Science_class'

SELECT * FROM science_class;

--Retrieve the name of the students who have scored more than 60 marks.

SELECT name FROM science_class 
WHERE science_marks > 60;

--Retrieve the name of the students who have scored more than 35 marks but less than 60 marks.

SELECT name FROM science_class
WHERE science_marks>35 AND science_marks<60;

--Retrieve all other students
-- i.e. students who have scored less than or equal to 35 or more than or equal to 60

-- Way 1
SELECT name FROM science_class
WHERE NOT (science_marks>35 AND science_marks<60);

-- Way 2
SELECT name FROM science_class
WHERE science_marks<=35 OR science_marks>=60;


