with cte as (
  select 
    worker_title, 
    salary, 
    rank() over (
      order by 
        salary desc
    ) as highest_salary 
  from 
    worker w 
    left join title t on t.worker_ref_id = w.worker_id 
  order by 
    2 desc
) 
select 
  worker_title 
from 
  cte 
where 
  highest_salary = 1
