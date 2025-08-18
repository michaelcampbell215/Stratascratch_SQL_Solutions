select 
  avg(
    case when country = 'USA' 
    and status = 'open' then 1 else 0 end
  )* 100 as us_active_share 
from 
  fb_active_users
