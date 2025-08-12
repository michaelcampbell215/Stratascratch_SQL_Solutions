select
    max(e.salary) - lag(max(e.salary)) OVER (order by e.salary) as salary_difference
from db_employee e
left join db_dept  d 
    on e.department_id = d.id
where d.department in ('engineering', 'marketing')
group by e.salary, d.department
order by e.salary desc
limit 1