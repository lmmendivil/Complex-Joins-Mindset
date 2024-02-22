SELECT stu.student_id, stu.student_name, sub.subject_name,  COUNT(exa.subject_name) attended_exams
FROM students stu
CROSS JOIN subjects sub
LEFT JOIN examinations exa ON exa.student_id = stu.student_id AND exa.subject_name = sub.subject_name
GROUP BY stu.student_id, stu.student_name, sub.subject_name, exa.student_id, exa.subject_name
ORDER BY stu.student_id, sub.subject_name;
