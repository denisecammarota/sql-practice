select count(*)
from salaries
where ((datediff(to_date,from_date)>365) and salary >= 100000);