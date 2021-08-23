SELECT UCASE(CONCAT(employee.FIRST_NAME, ' ', employee.LAST_NAME)) AS 'Nome Completo',
employee_history.START_DATE AS 'Data de início do cargo',
employee.SALARY AS 'Salário'
FROM hr.employees AS employee
INNER JOIN hr.job_history AS employee_history
ON employee_history.EMPLOYEE_ID = employee.EMPLOYEE_ID
WHERE MONTH(employee_history.START_DATE) IN (1, 2, 3)
ORDER BY CONCAT(employee.FIRST_NAME, ' ', employee.LAST_NAME), employee_history.START_DATE;
