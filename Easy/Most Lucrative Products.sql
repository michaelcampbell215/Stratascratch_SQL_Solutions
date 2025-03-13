/*You have been asked to find the 5 most lucrative products in terms of total revenue for the first half of 2022 (from January to June inclusive).
Output their IDs and the total revenue.

Table: online_orders */
-- https://platform.stratascratch.com/coding/2119-most-lucrative-products?code_type=1

select 
    product_id,
    sum(cost_in_dollars * units_sold) as revenue

from online_orders
group by 1
order by 2 desc
limit 5
