select 
    department,
    first_name,
    salary,
    round(avg(salary) over (partition by department), 0) as avg_salary
from employee
group by 1,2,3