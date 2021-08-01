SELECT CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
DATE_FORMAT(h.START_DATE, '%d/%m/%Y') AS 'Data de início',
DATE_FORMAT(h.END_DATE, '%d/%m/%Y') AS 'Data de rescisão',
ROUND(DATEDIFF(h.END_DATE, h.START_DATE)/365, 2) AS 'Anos trabalhados'
FROM hr.employees e
INNER JOIN hr.job_history h ON h.EMPLOYEE_ID = e.EMPLOYEE_ID
ORDER BY `Nome completo`, `Anos trabalhados`;
