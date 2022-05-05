drop trigger if exists check_date;

delimiter $$
create trigger check_date
before insert on employees
for each row 
begin
	declare today date;
    select date_format(sysdate(), '%Y-%m-%d') into today;
    if new.hire_date > today then set new.hire_date = today;
    end if;
end$$
delimiter ;