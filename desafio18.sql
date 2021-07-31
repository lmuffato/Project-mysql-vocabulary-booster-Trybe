SELECT CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
CONCAT(DAY(j.START_DATE), '/', MONTH(j.START_DATE), '/', YEAR(j.START_DATE)) AS 'Data de início',
CONCAT(DAY(j.END_DATE), '/', MONTH(j.END_DATE), '/', YEAR(j.END_DATE)) AS 'Data de rescisão',
ROUND(DATEDIFF(j.END_DATE, j.START_DATE)/365, 2) AS 'Anos trabalhados'
FROM hr.job_history AS j
INNER JOIN hr.employees AS e
WHERE j.EMPLOYEE_ID = e.EMPLOYEE_ID
ORDER BY `Nome completo`, `Anos trabalhados`;
