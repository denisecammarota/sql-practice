select emp_no,count(emp_no) as contracts_number
from dept_emp
where from_date > '2000-01-01'
group by emp_no
having count(emp_no) > 1
order by emp_no;
