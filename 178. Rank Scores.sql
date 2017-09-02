# solution 1
select Score, 
(select count(distinct Score) from Scores 
where Score >= s.Score) as Rank
from Scores s
order by Score DESC

# solution 2  
select s.Score, count(distinct(t.Score)) as Rank
from Scores s join Scores t on s.Score <= t.Score
group by s.Id
order by s.Score DESC
