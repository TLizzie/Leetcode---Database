select Name from Candidate c
inner join 
(select v.CandidateId
from Vote v
group by CandidateId
order by count(*) DESC
limit 1) a
on c.id = a.CandidateId 
