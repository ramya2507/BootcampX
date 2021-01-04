SELECT name, id, cohort_id
FROM students
WHERE email isNULL OR phone isNULL;