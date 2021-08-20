SELECT CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
CONCAT(DAY(h.START_DATE), '/', MONTH(h.START_DATE), '/', YEAR(h.START_DATE)) AS 'Data de início',
CONCAT(DAY(h.END_DATE), '/', MONTH(h.END_DATE), '/', YEAR(h.END_DATE)) AS 'Data de rescisão',
ROUND((DATEDIFF(h.END_DATE, h.START_DATE)) / 365, 2) AS 'Anos trabalhados'
FROM hr.job_history AS h
INNER JOIN hr.employees AS e ON h.EMPLOYEE_ID = e.EMPLOYEE_ID
ORDER BY CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME), `Anos trabalhados`;
