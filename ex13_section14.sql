drop table if exists employees_dup;
create table employees_dup(
emp_no int(11),
birth_date date,
first_name varchar(14),
last_name varchar(16),
gender enum('M','F'),
hire_date date
);

insert into employees_dup
select * 
from employees 
limit 20;

select *
from employees_dup;

insert into employees_dup
values(10001,'1953-09-02','Georgi','Facello','M','1986-06-26');

SELECT

    *

FROM

    (SELECT

        e.emp_no,

            e.first_name,

            e.last_name,

            NULL AS dept_no,

            NULL AS from_date

    FROM

        employees e

    WHERE

        last_name = 'Denis' UNION SELECT

        NULL AS emp_no,

            NULL AS first_name,

            NULL AS last_name,

            dm.dept_no,

            dm.from_date

    FROM

        dept_manager dm) as a

ORDER BY -a.emp_no DESC;