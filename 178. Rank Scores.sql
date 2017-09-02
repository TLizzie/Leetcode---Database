# solution 1
select Score, 
(select count(distinct Score) from Scores 
where Score >= s.Score) as Rank
from Scores s
order by Score DESC
