-- Calculates the difference between the highest salaries in the marketing and engineering departments. Output just the absolute difference in salaries.


-- https://platform.stratascratch.com/coding/10308-salaries-differences?code_type=1

select
max(e.salary) - lag(max(e.salary)) OVER (order by e.salary) as absolute_difference
from db_employee e
join db_dept  d 
on e.department_id = d.id
where d.department in ('engineering', 'marketing')
group by e.salary, d.department, d.id 
order by e.salary desc
limit 1
