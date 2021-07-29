SELECT j.job_title
AS `Cargo`,
ROUND(AVG(s.salary), 2)
AS `Média salarial`,
CASE
  WHEN ROUND(AVG(s.salary), 2) BETWEEN 2000 AND 5800 THEN 'Júnior'
  WHEN ROUND(AVG(s.salary), 2) BETWEEN 5801 AND 7500 THEN 'Pleno'
  WHEN ROUND(AVG(s.salary), 2) BETWEEN 7501 AND 10500 THEN 'Sênior'
  WHEN ROUND(AVG(s.salary), 2) > 10500 THEN 'CEO'
END
AS `Senioridade`
FROM hr.employees
AS s
INNER JOIN hr.jobs
AS j
ON j.job_id = s.job_id
GROUP BY j.job_id
ORDER BY `Média salarial`, `Cargo`;
