SELECT j.JOB_TITLE AS `Cargo`,
ROUND(AVG(s.salary), 2) AS `Média salarial`,
CASE
  WHEN AVG(s.salary) BETWEEN 2000 AND 5800
  THEN 'Júnior'
  WHEN AVG(s.salary) BETWEEN 5801 AND 7500
  THEN 'Pleno'
  WHEN AVG(s.salary) BETWEEN 7501 AND 10500
  THEN 'Sênior'
  ELSE 'CEO'
  END AS `Senioridade`
FROM jobs as j
INNER JOIN hr.employees AS s ON j.JOB_ID = s.JOB_ID
GROUP BY j.JOB_TITLE
ORDER BY 2, 1;
