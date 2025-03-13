-- Find how many reviews exist for each review score given to 'Hotel Arena'. Output the hotel name ('Hotel Arena'), each review score, and the number of reviews for that score. 
-- Ensure the results only include 'Hotel Arena.'

-- https://platform.stratascratch.com/coding/10166-reviews-of-hotel-arena?code_type=1


select 
    hotel_name,
    reviewer_score,
   count(*)
from hotel_reviews
where hotel_name = "Hotel Arena"
 group by 2,1;
