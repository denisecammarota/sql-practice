INSERT INTO employees
VALUES
(999901,'1984-04-21','John','Smith','M','2011-01-01');

SELECT *
FROM employees
where emp_no = 999901;

UPDATE employees
SET 
first_name = 'Stella',
last_name = 'Parkinson',
birth_date = '1990-12-31',
gender = 'F'
WHERE emp_no = 999901;
