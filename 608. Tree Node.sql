select id as Id,
case when tree.id in (select atree.id from tree atree where atree.p_id is null ) then 'Root'
when tree.id in (select atree.p_id from tree atree) then 'Inner'
else 'Leaf'
end as Type
from tree 
order by Id
