SELECT
j.job_title AS `Cargo`,
ROUND(AVG(e.salary), 2) AS `Média salarial`,
CASE
  WHEN AVG(e.salary) <= 5800 THEN 'Júnior'
  WHEN AVG(e.salary) <= 7500 THEN 'Pleno'
  WHEN AVG(e.salary) <= 10500 THEN 'Sênior'
  ELSE 'CEO'
END AS `Senioridade`
FROM hr.employees AS e
INNER JOIN hr.jobs AS j
ON e.job_id = j.job_id
GROUP BY e.job_id
ORDER BY `Média salarial`, `Cargo`;
