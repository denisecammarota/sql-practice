select avg(s.salary) as average_salary,d.dept_name 
from departments d
join dept_manager m on m.dept_no = d.dept_no
join salaries s on s.emp_no = m.emp_no
group by dept_name
-- having etc etc 
order by average_salary;