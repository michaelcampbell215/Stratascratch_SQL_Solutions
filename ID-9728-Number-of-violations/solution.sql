select 
    year(inspection_date) as year,
    count(violation_id) as total_violations
from sf_restaurant_health_violations
where business_name = 'Roxanne Cafe'
group by 1