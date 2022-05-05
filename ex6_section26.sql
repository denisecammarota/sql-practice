drop procedure if exists first_procedure;

delimiter $$
create procedure first_procedure(in p_emp_no integer)
begin
	select e.emp_no,de.dept_no, d.dept_name
    from employees e
    join dept_emp de on e.emp_no = de.emp_no
    join departments d on de.dept_no = d.dept_no
    where e.emp_no = p_emp_no
    and de.from_date = (select max(from_date) from dept_emp where emp_no = p_emp_no);
end$$

delimiter ;

call first_procedure(10010);
