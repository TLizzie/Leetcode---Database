# solution 1 
# union all will not elimit duplicate rows
select t2.Id as id, t2.num as num
from (
select t1.Id, sum(cnt) as num
from(
select accepter_id as Id, count(*) as cnt
from request_accepted
group by accepter_id

union all

select requester_id as Id, count(*) as cnt
from request_accepted 
group by requester_id) t1

group by t1.Id ) t2 

order by t2.num DESC
limit 1

# solution 2
# official answer, easier 
select ids as id, cnt as num
from
(
select ids, count(*) as cnt
   from
   (
        select requester_id as ids from request_accepted
        union all
        select accepter_id from request_accepted
    ) as tbl1
   group by ids
   ) as tbl2
order by cnt desc
limit 1
;

# 2/19/2018
select a.id, count(*) as num
from 
(select requester_id as id from request_accepted
union all 
select accepter_id as id from request_accepted) a
group by id
order by num desc
limit 1
