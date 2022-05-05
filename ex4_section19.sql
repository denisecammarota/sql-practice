select dm.emp_no, e.first_name, e.last_name, max(s.salary) - min(s.salary) as salary_raise,
case when max(s.salary) - min(s.salary)  > 30000 then 'Greater than 30k'
else 'Lesser than 30k' end as salary_verbose
from dept_manager dm
join employees e
on dm.emp_no = e.emp_no
join salaries s
on dm.emp_no = s.emp_no
group by dm.emp_no;
