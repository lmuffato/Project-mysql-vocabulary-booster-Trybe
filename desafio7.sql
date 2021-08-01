SELECT
  UPPER(CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME)) AS `Nome completo`,
  jh.START_DATE AS `Data de início do cargo`,
  e.SALARY AS `Salário`
FROM hr.job_history AS jh
INNER JOIN hr.employees AS e
ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
HAVING MONTH(jh.START_DATE) IN (1,2,3)
ORDER BY `Nome completo`, `Data de início do cargo`;
