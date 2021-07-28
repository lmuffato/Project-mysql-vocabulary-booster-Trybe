SELECT
  j.job_title AS 'Cargo',
  (j.max_salary - j.min_salary) AS 'Variação Salarial',
  ROUND(j.min_salary / 12, 2) AS 'Média mínima mensal',
  ROUND(j.max_salary / 12, 2) AS 'Média máxima mensal'
FROM
  hr.jobs j
INNER JOIN
  hr.employees e ON e.job_id = j.job_id
GROUP BY e.job_id
ORDER BY (j.max_salary - j.min_salary), j.job_title;
