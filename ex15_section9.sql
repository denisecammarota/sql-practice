SELECT 
    salary, COUNT(salary) AS salary_count
FROM
    salaries
WHERE
    salary > 80000
GROUP BY salary
ORDER BY salary;