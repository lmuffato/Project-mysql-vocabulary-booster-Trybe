-- https://www.w3schools.com/mysql/func_mysql_date_format.asp
SELECT
CONCAT(e.first_name, ' ', e.last_name) AS `Nome completo`,
DATE_FORMAT(jh.start_date, '%d/%m/%Y') AS `Data de início`,
DATE_FORMAT(jh.end_date, '%d/%m/%Y') AS `Data de rescisão`,
ROUND(DATEDIFF(jh.end_date, jh.start_date) / 365, 2) AS `Anos trabalhados`
FROM hr.job_history AS jh
JOIN hr.employees AS e
ON e.employee_id = jh.employee_id
ORDER BY `Nome completo`, `Anos trabalhados`;
