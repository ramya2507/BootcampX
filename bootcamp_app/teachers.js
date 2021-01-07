const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

//query to return all teachers who assisted for a cohort
pool.query(`SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort
FROM assistance_requests
JOIN teachers ON teachers.id = teacher_id
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
WHERE assistance_requests.teacher_id = teachers.id 
AND cohorts.name LIKE '%${process.argv[2]}%'
ORDER BY teacher;`)
.then(res => {
  res.rows.forEach((data) => {
    console.log(`${data.cohort}: ${data.teacher}`);
  });
})
.catch(err => console.error('query error', err.stack));