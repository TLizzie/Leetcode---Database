select 
ifnull(
(select num
from number 
group by num
having count(*) = 1
order by num DESC
limit 1), null) as num
