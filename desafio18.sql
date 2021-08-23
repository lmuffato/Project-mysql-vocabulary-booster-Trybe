SELECT CONCAT(employee.FIRST_NAME, ' ', employee.LAST_NAME) AS 'Nome completo',
CONCAT(
IF(DAY(employee_history.START_DATE) < 10, CONCAT('0', DAY(employee_history.START_DATE)), DAY(employee_history.START_DATE)),
'/',
IF(MONTH(employee_history.START_DATE) < 10, CONCAT('0', MONTH(employee_history.START_DATE)), MONTH(employee_history.START_DATE)),
'/',
YEAR(employee_history.START_DATE)
) AS 'Data de início',
CONCAT(
IF(DAY(employee_history.END_DATE) < 10, CONCAT('0', DAY(employee_history.END_DATE)), DAY(employee_history.END_DATE)),
'/',
IF(MONTH(employee_history.END_DATE) < 10, CONCAT('0', MONTH(employee_history.END_DATE)), MONTH(employee_history.END_DATE)),
'/',
YEAR(employee_history.END_DATE)
) AS 'Data de rescisão',
ROUND((DATEDIFF(employee_history.END_DATE, employee_history.START_DATE)) / 365, 2) AS 'Anos trabalhados'
FROM hr.job_history AS employee_history
INNER JOIN hr.employees AS employee ON employee_history.EMPLOYEE_ID = employee.EMPLOYEE_ID
ORDER BY CONCAT(employee.FIRST_NAME, ' ', employee.LAST_NAME), `Anos trabalhados`;
