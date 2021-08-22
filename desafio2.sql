SELECT job_title AS 'Cargo',
CASE
WHEN max_salary BETWEEN 5000 AND 10000 THEN 'Baixo'
WHEN max_salary BETWEEN 10001 AND 20000 THEN 'Médio'
WHEN max_salary BETWEEN 20001 AND 30000 THEN 'Alto'
WHEN max_salary > 30000 THEN 'Altísimo'
END AS 'Nível'
FROM jobs
ORDER BY job_title;
