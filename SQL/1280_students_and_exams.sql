SELECT stu.student_id, stu.student_name, stu.subject_name, count(exams.subject_name) as attended_exams
FROM (
    SELECT *
    FROM Students
    JOIN Subjects ON 1 = 1
) AS stu
LEFT JOIN Examinations AS exams
ON stu.student_id = exams.student_id and stu.subject_name = exams.subject_name
group by stu.student_id, stu.subject_name
order by stu.student_id, stu.subject_name;
