select project_id, round(avg(E.experience_years),2) as average_years from Project P
join Employee E on P.employee_id = E.employee_id
group by P.project_id;
