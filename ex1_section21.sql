select year(de.from_date) as current_year,e.gender,count(e.emp_no) as number_employees
from t_employees e
join t_dept_emp de on e.emp_no = de.emp_no
group by year(de.from_date),e.gender
having current_year >= '1990'
order by current_year;
