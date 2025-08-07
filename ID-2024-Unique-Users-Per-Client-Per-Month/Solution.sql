SELECT  
    distinct client_id, 
    month(time_id), 
    count(distinct user_id) 
FROM fact_events
GROUP by 1,2
ORDER by 1,2