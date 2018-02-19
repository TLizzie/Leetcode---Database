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

# 2/18/2018
select Name from Candidate c
inner join 
(select v.CandidateId
from Vote v
group by CandidateId
order by count(*) DESC
limit 1) a
on c.id = a.CandidateId 
