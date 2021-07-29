SELECT
(
  SELECT CONCAT(UCASE(FIRST_NAME), ' ', UCASE(LAST_NAME))
  FROM hr.employees
  WHERE hr.employees.EMPLOYEE_ID = hr.job_history.EMPLOYEE_ID
) AS `Nome completo`,
START_DATE AS `Data de início`,
(
  SELECT SALARY
  FROM hr.employees
  WHERE hr.employees.EMPLOYEE_ID = hr.job_history.EMPLOYEE_ID
) AS `Salário`
FROM hr.job_history
WHERE MONTH(START_DATE) BETWEEN 1 AND 3
ORDER BY `Nome completo`, START_DATE;
