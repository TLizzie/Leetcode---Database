# 11/12 test case passed.. 

select followee as follower, count(*) as num
from
(select distinct * from follow) a
where followee in (
select follower from follow)
group by followee
order by follower
