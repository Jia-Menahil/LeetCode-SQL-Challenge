select E.name, B.bonus from Employee E
left outer Join Bonus B on E.empId = B.empId
where B.bonus < 1000 or B.bonus is null;
