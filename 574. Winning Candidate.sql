# solution 1 

select Name 
from Candidate c
join 
(select CandidateId
from Vote 
group by CandidateId
order by count(*) DESC
limit 1) t1
where t1.CandidateId = c.id
