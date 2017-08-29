#solution 1
select e2.Name as Name
from Employee e1
join Employee e2
on e1.ManagerId = e2.Id
group by Name
Having count(*) >=5

#solution 2
select Name 
from Employee 
where Id in 
(select
ManagerId
from
Employee
group by ManagerId
having count(*) >= 5)
