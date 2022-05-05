use salaries;

drop procedure if exists average_salary;

DELIMITER $$
create procedure average_salary()
	begin 
		select avg(salary) as average_salary from salaries;
    end$$
DELIMITER ;


call average_salary();
