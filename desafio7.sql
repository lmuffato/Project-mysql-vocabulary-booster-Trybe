SELECT
  UCASE(CONCAT(eploy.FIRST_NAME, ' ', eploy.LAST_NAME)) AS "Nome completo",
  hyst.START_DATE AS "Data de início",
  eploy.SALARY AS "Salário"
FROM hr.employees AS eploy
INNER JOIN hr.job_history AS hyst
ON eploy.EMPLOYEE_ID = hyst.EMPLOYEE_ID
WHERE MONTH(hyst.START_DATE) IN (1, 2, 3)
ORDER BY `Nome completo`, `Data de início`;
