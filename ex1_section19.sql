use employees;

drop trigger if exists check_hire_date;

delimiter $$
create trigger check_hire_date
before insert on employees
for each row
begin
	if new.hire_date > DATE_FORMAT(SYSDATE(), '%y-%m-%d') then
		set new.hire_date = DATE_FORMAT(SYSDATE(), '%y-%m-%d');
	end if;
end$$
delimiter ;
 
 INSERT employees VALUES ('999904', '1970-01-31', 'John', 'Johnson', 'M', '2025-01-01');  
 
 SELECT  

    *  

FROM  

    employees

ORDER BY emp_no DESC;

