Select
 
a.request_at as Day, round(sum(if(status = 'completed',0,1)) / count(*),2) as 'Cancellation Rate'
from Trips a
left join Users b on a.Client_Id = b.Users_Id
where a.request_at between '2013-10-01' and  '2013-10-03' and b.Banned = 'NO'
group by a.request_at
