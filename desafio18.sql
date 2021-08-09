SELECT
CONCAT(e.first_name, ' ', e.last_name) AS 'Nome completo',
DATE_FORMAT(j.start_date, '%d/%m/%Y') AS 'Data de início',
DATE_FORMAT(j.end_date, '%d/%m/%Y') AS 'Data de rescisão',
ROUND(DATEDIFF(j.end_date, j.start_date)/365, 2) AS 'Anos trabalhados'
FROM hr.employees AS e
JOIN hr.job_history AS j
ON e.employee_id = j.employee_id
ORDER BY `Nome completo`, `Anos trabalhados`;
