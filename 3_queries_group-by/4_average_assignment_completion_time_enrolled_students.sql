SELECT students.name as student, AVG(duration) as average_assignment_duration
FROM students
JOIN assignment_submissions ON assignment_submissions.student_id = students.id
WHERE students.end_date IS NULL
GROUP BY students.name
ORDER BY average_assignment_duration desc;