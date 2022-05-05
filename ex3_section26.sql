select e.emp_no, 
(select min(de.dept_no) from dept_emp de where de.emp_no = e.emp_no) dept_no,
case when e.emp_no <= 10020 then 110022
else 110039
end as manager 
from employees e
where emp_no <= 10040;
