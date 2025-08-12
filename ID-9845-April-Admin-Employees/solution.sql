select 
    count(worker_id) as n_admins 
from worker
where joining_date >= '2014-04-01' 
    and department = 'Admin';