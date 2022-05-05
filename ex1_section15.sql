select * from dept_manager
where emp_no in(select emp_no from employees where hire_date between '1990-01-01' and '1995-01-01');