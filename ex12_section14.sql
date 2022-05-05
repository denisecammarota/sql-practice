select e.gender,count(e.gender)
from employees e
join dept_manager dm 
on e.emp_no = dm.emp_no
group by gender;