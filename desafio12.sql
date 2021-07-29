SELECT
	CONCAT(t1.FIRST_NAME, ' ', t1.LAST_NAME) AS `Nome completo do funcionário 1`,
	ROUND(t1.SALARY,2) AS `Sálario funcionário 1`,
  t1.PHONE_NUMBER AS `Telefone funcionário 1`,
  CONCAT(t2.FIRST_NAME, ' ', t2.LAST_NAME) AS `Nome completo do funcionário 2`,
  ROUND(t2.SALARY,2) AS `Sálario funcionário 2`,
  t2.PHONE_NUMBER AS `Telefone funcionário 2`
FROM hr.employees AS t1, hr.employees AS t2
WHERE t1.JOB_ID = t2.JOB_ID AND t1.EMPLOYEE_ID <> t2.EMPLOYEE_ID
ORDER BY `Nome completo do funcionário 1`, `Nome completo do funcionário 2`;
