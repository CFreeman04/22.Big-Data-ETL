-- star_rating       - The 1-5 star rating of the review.
-- helpful_votes     - Number of helpful votes.
-- total_votes       - Number of total votes the review received.
-- vine              - Review was written as part of the Vine program.

select 
	count(review_id) as "# of Reviews",
	sum(case when total_votes >= 10 then 1 else 0 end) as "Reviews w/Total Votes >= 10", 
	sum(case when total_votes < 10 and total_votes > 0 then 1 else 0 end) as "Reviews w/Total Votes < 10",
	sum(case when total_votes = 0 then 1 else 0 end) as "Reviews w/Total Votes = 0"
from sports_vine
where vine = 'Y';

select 
	count(review_id) as "# of Reviews",
	sum(case when total_votes >= 10 then 1 else 0 end) as "Reviews w/Total Votes >= 10", 
	sum(case when total_votes < 10 and total_votes > 0 then 1 else 0 end) as "Reviews w/Total Votes < 10",
	sum(case when total_votes = 0 then 1 else 0 end) as "Reviews w/Total Votes = 0"
from lawn_vine
where vine = 'Y';

