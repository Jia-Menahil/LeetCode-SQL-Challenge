select S.student_id, S.student_name, SU.subject_name, 
        count(E.student_id) as attended_exams
from Students S
cross join Subjects SU
left join Examinations E
on S.student_id = E.student_id 
and SU.subject_name = E.subject_name
group by S.student_id, S.student_name, SU.subject_name
order by S.student_id, SU.subject_name;
