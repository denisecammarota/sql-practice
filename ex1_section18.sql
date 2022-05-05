use employees;

drop procedure if exists select_employees;

DELIMITER $$
create procedure select_employees()
	begin 
		select * from employees
		limit 1000;
    end$$
DELIMITER ;

call employees.select_employees();
call select_employees();
