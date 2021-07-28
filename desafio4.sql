SELECT jobs.JOB_TITLE AS 'Cargo', ROUND(AVG(employees.SALARY), 2) AS 'Média salarial',
CASE
  WHEN AVG(employees.SALARY) BETWEEN 2000 AND 5800 THEN 'Júnior'
  WHEN AVG(employees.SALARY) BETWEEN 5801 AND 7500 THEN 'Pleno'
  WHEN AVG(employees.SALARY) BETWEEN 7501 AND 10500 THEN 'Sênior'
  ELSE 'CEO'
END AS 'Senioridade'
FROM hr.employees AS employees INNER JOIN hr.jobs AS jobs ON employees.JOB_ID = jobs.JOB_ID
GROUP BY jobs.JOB_TITLE
ORDER BY AVG(employees.SALARY), jobs.JOB_TITLE;
