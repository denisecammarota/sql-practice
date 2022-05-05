select ee.gender, d.dept_name, avg(s.salary)
from salaries s
join employees ee on s.emp_no = ee.emp_no
join dept_emp de on ee.emp_no = de.emp_no
join departments d on de.dept_no = d.dept_no
group by ee.gender,de.dept_no
order by de.dept_no;

