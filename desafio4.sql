SELECT job.JOB_TITLE AS 'Cargo', ROUND(AVG(emp_jobname.SALARY), 2) AS 'Média salarial',
CASE
  WHEN ROUND(AVG(emp_jobname.SALARY), 2) BETWEEN 2000 AND 5800 THEN 'Júnior'
  WHEN ROUND(AVG(emp_jobname.SALARY), 2) BETWEEN 5801 AND 7500 THEN 'Pleno'
  WHEN ROUND(AVG(emp_jobname.SALARY), 2) BETWEEN 7501 AND 10500 THEN 'Sênior'
  ELSE 'CEO'
END AS 'Senioridade'
FROM hr.jobs AS job
INNER JOIN hr.employees AS emp_jobname
ON job.JOB_ID = emp_jobname.JOB_ID
GROUP BY emp_jobname.JOB_ID
ORDER BY ROUND(AVG(emp_jobname.SALARY), 2), job.JOB_TITLE;
