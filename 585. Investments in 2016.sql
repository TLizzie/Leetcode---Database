# solution 1
# doesn't need ifnull-- just for practicing purpose
select ifnull(
(select sum(TIV_2016) as TIV_2016
from
insurance
where TIV_2015 in 
(select TIV_2015
 from insurance
group by TIV_2015
having count(*) > 1)

and

CONCAT(LAT,LON) in 
(
select CONCAT(LAT,LON)
from insurance 
group by LAT, LON
having count(*) = 1)
), null) as TIV_2016
