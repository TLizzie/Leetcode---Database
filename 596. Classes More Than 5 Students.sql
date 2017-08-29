# solution 1

select class, count(distinct student) as num
from courses
group by class
