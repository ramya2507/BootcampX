SELECT name, id, cohort_id
FROM students
WHERE end_date isNULL
ORDER BY cohort_id;