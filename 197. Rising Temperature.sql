select today.id 
from Weather yesterday
join Weather today
on datediff(today.recordDate, yesterday.recordDate) = 1
where today.temperature > yesterday.temperature;
