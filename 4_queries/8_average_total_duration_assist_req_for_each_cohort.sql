SELECT AVG(duration) as average_total_duration
  FROM (
  SELECT cohorts.name as cohort, SUM(completed_at - started_at) as duration
  FROM assistance_requests
  JOIN students ON students.id = student_id
  JOIN cohorts ON cohorts.id = cohort_id
  GROUP BY cohorts.name
  ORDER BY duration
  ) as durations;



