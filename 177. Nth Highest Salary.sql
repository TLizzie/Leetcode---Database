# the following is wrong since it will not recognize duplicate pairs


CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
set N = N-1;
  RETURN (
      # Write your MySQL query statement below.
      # Not going to work now for duplicate salaries 
      select ifnull ((select Salary from Employee order by Salary DESC limit 1 offset N), null)
     );
END


# solution 1
CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
set N = N-1;
  RETURN (
      # Write your MySQL query statement below.
      select ifnull((select Salary from Employee group by Salary order by Salary DESC limit 1 offset N), null)
     );
END
