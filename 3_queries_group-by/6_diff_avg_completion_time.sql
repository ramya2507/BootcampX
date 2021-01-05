SELECT students.name as student, 
avg(assignment_submissions.duration) as average_assignment_duration,
avg(assignments.duration) as estimated_avgerage_duration
FROM students
JOIN assignment_submissions ON student_id = students.id
JOIN assignments ON assignments.id = assignment_submissions.assignment_id
WHERE end_date IS NULL
GROUP BY student
HAVING avg(assignment_submissions.duration) < avg(assignments.duration)
ORDER BY average_assignment_duration;