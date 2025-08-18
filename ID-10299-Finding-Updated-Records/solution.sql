select 
  id, 
  first_name, 
  last_name, 
  department_id, 
  salary 
from 
  (
    select 
      *, 
      rank() over (
        partition by id 
        order by 
          salary desc
      ) as highest_salary 
    from 
      ms_employee_salary
  ) as hs 
where 
  highest_salary = 1