SELECT CONCAT(employees.FIRST_NAME, ' ', employees.LAST_NAME) AS 'Nome completo',
DATE_FORMAT(jobHistory.START_DATE, '%d/%m/%Y') AS 'Data de início',
DATE_FORMAT(jobHistory.END_DATE, '%d/%m/%Y') AS 'Data de rescisão',
ROUND(DATEDIFF(jobHistory.END_DATE, jobHistory.START_DATE) / 365, 2) AS 'Anos trabalhados'
FROM hr.employees AS employees
INNER JOIN hr.job_history AS jobHistory ON jobHistory.EMPLOYEE_ID = employees.EMPLOYEE_ID
ORDER BY `Nome completo`, `Anos trabalhados`;
