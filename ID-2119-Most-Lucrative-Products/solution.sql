select 
    product_id,
    sum(cost_in_dollars * units_sold) as revenue
from online_orders
group by 1
order by 2 desc
limit 5