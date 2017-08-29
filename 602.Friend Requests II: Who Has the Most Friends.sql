# solution 1 (8/9 cases passed, why?)
select t2.Id as id, t2.num as num
from (
select t1.Id, sum(cnt) as num
from(
select accepter_id as Id, count(*) as cnt
from request_accepted
group by accepter_id

union 

select requester_id as Id, count(*) as cnt
from request_accepted 
group by requester_id) t1

group by t1.Id ) t2 

order by t2.num DESC
limit 1
