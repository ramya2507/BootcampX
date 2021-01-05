SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort
FROM assistance_requests
JOIN teachers ON teachers.id = teacher_id
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
WHERE assistance_requests.teacher_id = teachers.id 
AND cohorts.name = 'JUL02'
ORDER BY teacher;