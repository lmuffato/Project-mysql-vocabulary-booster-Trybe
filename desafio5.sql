SELECT jobs.JOB_TITLE AS Cargo,
  (MAX(jobs.MAX_SALARY) - MIN(jobs.MIN_SALARY)) AS 'Variação Salarial',
  ROUND(AVG(jobs.MIN_SALARY) / 12, 2) AS 'Média mínima mensal',
  ROUND(AVG(jobs.MAX_SALARY) / 12, 2) AS 'Média máxima mensal'
FROM hr.jobs AS jobs INNER JOIN hr.employees AS employees ON jobs.JOB_ID = employees.JOB_ID
GROUP BY Cargo
ORDER BY (MAX(jobs.MAX_SALARY) - MIN(jobs.MIN_SALARY)), jobs.JOB_TITLE;
