# Solution 1

select t1.pay_month, department_id, 
case 
    when department_avg>company_avg then "higher"
    when department_avg<company_avg then "lower"
    else 'same'
end as comparison
from 
(select date_format(pay_date, '%Y-%m') as pay_month, department_id, avg(amount) as department_avg
from salary s
join employee e
on s.employee_id = e.employee_id
group by department_id, pay_month) t1

join 

(select date_format(pay_date, '%Y-%m') as pay_month, avg(amount) as company_avg
from salary
group by pay_month) t2

on t1.pay_month = t2.pay_month
