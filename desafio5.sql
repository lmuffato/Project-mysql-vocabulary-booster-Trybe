SELECT
  JOBS.JOB_TITLE as 'Cargo',
  MAX_SALARY - MIN_SALARY AS 'Variação Salarial',
  ROUND(AVG(JOBS.MIN_SALARY / 12), 2) AS "Média mínima mensal",
  ROUND(AVG(JOBS.MAX_SALARY / 12), 2) AS "Média máxima mensal"
FROM hr.jobs AS JOBS
INNER JOIN hr.employees AS EMP
ON JOBS.JOB_ID = EMP.JOB_ID
GROUP BY EMP.JOB_ID
ORDER BY `Variação Salarial` ASC, Cargo ASC;
