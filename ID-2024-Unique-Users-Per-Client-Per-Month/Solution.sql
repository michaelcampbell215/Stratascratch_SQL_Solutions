select 
   client_id, 
  date_part('month', time_id), 
  count(distinct user_id) 
from 
  fact_events 
group by 
  1,2
order by 
  1, 
  2
