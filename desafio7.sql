SELECT UCASE(CONCAT(employees.FIRST_NAME, ' ', employees.LAST_NAME)) AS 'Nome completo',
history.START_DATE AS 'Data de início',
employees.SALARY AS 'Salário'
FROM hr.job_history AS history
INNER JOIN 
hr.employees AS employees
ON
history.EMPLOYEE_ID = employees.EMPLOYEE_ID
WHERE MONTH(history.START_DATE) BETWEEN 01 AND 03
ORDER BY `Nome completo` ASC, `Data de início` ASC;
