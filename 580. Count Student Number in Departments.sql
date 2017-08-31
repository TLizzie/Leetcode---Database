# solution 1

select dept_name, count(student_id) as student_number
from student s
right join department d
on s.dept_id = d.dept_id
group by dept_name
order by student_number DESC, dept_name 
