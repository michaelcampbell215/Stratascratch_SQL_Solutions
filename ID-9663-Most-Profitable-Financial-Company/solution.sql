with cte as 
    (select 
        company, 
        profits, 
        sector, 
        continent, R
        OW_NUMBER() OVER(PARTITION BY sector ORDER BY profits  DESC) AS row_num
    from forbes_global_2010_2014)

select company, continent
from cte
where sector = 'Financials'
limit 1