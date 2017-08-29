# solution 1 
select name, population, area
from world
where area > 3000000 OR population > 25000000

# solution 2
select name, population, area
from world
where area > 3000000

Union

select name, population, area
from world
where population > 25000000
