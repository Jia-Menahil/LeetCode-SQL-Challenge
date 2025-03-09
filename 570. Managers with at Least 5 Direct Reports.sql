-- We can solve it by 2 methods 
-- 1. By using 'IN' function
select name from Employee
where id in(select managerId 
from Employee
group by managerId
having count(*)>=5);


-- 2.By using 'Self join'
-- It is more efficient way to solve because its runtime is less than the 1st method as it does not use extra time to run the subquery
select e1.name
from Employee e1
join Employee e2 on e1.id = e2.managerId
group by e1.id
having count(e2.managerId)>=5;
