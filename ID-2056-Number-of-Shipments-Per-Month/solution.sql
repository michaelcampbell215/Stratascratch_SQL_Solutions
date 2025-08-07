SELECT 
    COUNT(shipment_id),
    DATE_FORMAT(shipment_date, '%Y-%m') as date_ym
from amazon_shipment
GROUP BY 2