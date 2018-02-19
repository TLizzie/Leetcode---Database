select  
d.Name as Department, e.Name as Employee, e.Salary as Salary  
from Department d, Employee e,  
(select MAX(Salary) as Salary,  DepartmentId as DepartmentId from Employee GROUP BY DepartmentId) h  
where  
e.Salary = h.Salary and  
e.DepartmentId = h.DepartmentId and  
e.DepartmentId = d.Id;  


SELECT d.Name AS Department, e.Name AS Employee, e.Salary AS Salary
FROM Department d JOIN Employee e ON e.DepartmentId = d.Id
WHERE e.Salary IN (Select Max(e2.Salary) from Employee e2 where e.DepartmentId = e2.DepartmentId)
