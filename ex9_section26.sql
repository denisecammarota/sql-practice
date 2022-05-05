drop function if exists first_function;

delimiter $$
create function first_function(p_emp_no integer) returns decimal(10,2)
deterministic
begin
	declare p_max_salary decimal(10,2);
	select max(s.salary) into p_max_salary
    from salaries s
    where s.emp_no = p_emp_no;
	return p_max_salary;
end$$
delimiter ;

select first_function(11356);