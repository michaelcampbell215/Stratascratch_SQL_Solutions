select 
  type, 
  round(
    avg(
      case when processed = 'TRUE' then 1 else 0 end
    ), 
    2
  ) as processed_rate
from 
  facebook_complaints 
group by 
  1
