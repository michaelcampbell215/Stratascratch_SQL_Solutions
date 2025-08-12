with cte as
        (select 
            department,
            first_name,
            salary,
            rank() over (partition by department order by salary desc) as higest_salary
        from employee)        
select 
    department, 
    first_name, 
    salary
from cte
where higest_salary = 1
order by salary desc;