SELECT
  CONCAT(UCASE(e.FIRST_NAME), ' ', UCASE(e.LAST_NAME)) AS `Nome completo`,
  jh.START_DATE AS `Data de início do cargo`,
  e.SALARY AS `Salário`
FROM hr.employees AS e
INNER JOIN hr.job_history AS jh
ON e.JOB_ID = jh.JOB_ID
HAVING MONTH(jh.START_DATE) IN (1,2,3)
ORDER BY `Nome completo`, `Data de início do cargo`;
