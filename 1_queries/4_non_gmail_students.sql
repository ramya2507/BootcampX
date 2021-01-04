SELECT name, email, id, cohort_id
FROM students
WHERE phone isNULL AND email NOT LIKE '%gmail.com';