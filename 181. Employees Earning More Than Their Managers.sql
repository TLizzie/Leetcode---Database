# solution 1

select t1.name as Employee from (
select e1.*, e2.Name as ManagerName, e2.Salary as ManagerSalary
from employee e1 left join employee e2 on e1.ManagerId = e2.Id) t1

where t1.salary > t1.ManagerSalary
