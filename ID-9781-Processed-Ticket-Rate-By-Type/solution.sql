select 
    type,
    avg(processed) as processed_rate
from facebook_complaints
group by 1