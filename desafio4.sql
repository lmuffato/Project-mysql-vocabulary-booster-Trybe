SELECT JOB.job_title 
AS 'Cargo',
ROUND(AVG(SAL.salary), 2) AS 'Média salarial',
CASE
  WHEN ROUND(AVG(SAL.salary), 2) BETWEEN 2000 AND 5800 THEN 'Júnior'
  WHEN ROUND(AVG(SAL.salary), 2) BETWEEN 5801 AND 7500 THEN 'Pleno'
  WHEN ROUND(AVG(SAL.salary), 2) BETWEEN 7501 AND 10500 THEN 'Sênior'
  WHEN ROUND(AVG(SAL.salary), 2) > 10500 THEN 'CEO'
END AS `Senioridade`
FROM hr.jobs AS JOB
INNER JOIN hr.employees AS SAL
ON SAL.job_id = JOB.job_id
GROUP BY SAL.job_id
ORDER BY ROUND(AVG(SAL.salary), 2) ASC, JOB.job_title ASC;
