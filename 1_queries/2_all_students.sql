SELECT COUNT(id) AS no_of_students
FROM students
WHERE cohort_id IN (1, 2, 3);