select round(min(SQRT((POW(p1.x - p2.x, 2) + POW(p1.y - p2.y, 2)))),2) as shortest 
from point_2d p1
join point_2d p2 
ON (p1.x <= p2.x AND p1.y < p2.y)
        OR (p1.x <= p2.x AND p1.y > p2.y)
        OR (p1.x < p2.x AND p1.y = p2.y)
