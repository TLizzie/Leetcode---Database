select id as Id,
case when tree.id in (select atree.id from tree atree where atree.p_id is null ) then 'Root'
when tree.id in (select atree.p_id from tree atree) then 'Inner'
else 'Leaf'
end as Type
from tree 
order by Id

#2/19/2018
select id, 

case when p_id is null then "Root"
     when id in (select p_id from tree) then "Inner"
     else "Leaf"
end as Type
from tree
