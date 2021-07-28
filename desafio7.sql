SELECT UCASE(CONCAT(employees.FIRST_NAME, ' ', employees.LAST_NAME)) AS 'Nome completo',
job_history.START_DATE AS 'Data de início',
employees.SALARY AS 'Salário'
FROM employees AS employees
INNER JOIN job_history AS job_history
ON employees.EMPLOYEE_ID = job_history.EMPLOYEE_ID
WHERE MONTH(job_history.START_DATE) IN(01, 02, 03)
ORDER BY `Nome completo`, `Data de início`;
