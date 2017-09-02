# 11/12 test case passed.. 

select followee as follower, count(*) as num
from
(select distinct * from follow) a
where followee in (
select follower from follow)
group by followee
order by follower

# 11/12 test case passed..

select f1.followee as follower, count(*) as num
from (select distinct * from follow) f1
left join (select distinct * from follow) f2
on f1.followee = f2.follower
where f2.follower is not null
group by f1.followee
