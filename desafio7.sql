SELECT UCASE(CONCAT(employees.FIRST_NAME, ' ', employees.LAST_NAME)) AS `Nome completo`,
history.START_DATE AS `Data de início`,
employees.SALARY AS `Salário`
FROM hr.employees AS employees
INNER JOIN hr.job_history AS history ON history.EMPLOYEE_ID = employees.EMPLOYEE_ID
WHERE MONTH(history.START_DATE) BETWEEN 1 AND 3
ORDER BY `Nome completo`, `Data de início`;
