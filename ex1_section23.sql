select ee.gender, d.dept_name, round(avg(s.salary),2) as average_salary, year(de.from_date) as calendar_year
from t_salaries s
join t_dept_emp de on s.emp_no = de.emp_no
join t_departments d on d.dept_no = de.dept_no
join t_employees ee on ee.emp_no = s.emp_no
group by d.dept_no , ee.gender, calendar_year
having calendar_year <= 2002; 