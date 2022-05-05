select * 
from salaries
where salary > 89000;

create index salaries on salaries(salary);
