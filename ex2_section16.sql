select *
from dept_emp
order by emp_no;

select *,count(emp_no) as Num
from dept_emp
group by emp_no
having Num > 1
order by emp_no;