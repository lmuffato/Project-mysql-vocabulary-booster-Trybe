/* Fonte de DATE_FORMAT = https://www.w3schools.com/mysql/func_mysql_date_format.asp */

SELECT
CONCAT(te.first_name, " ", te.last_name) AS `Nome completo`,
DATE_FORMAT(tjh.START_DATE, '%d/%m/%Y')
AS "Data de início",
DATE_FORMAT(tjh.END_DATE, '%d/%m/%Y')
AS "Data de rescisão",
ROUND(DATEDIFF(tjh.end_date, tjh.start_date)/365, 2) AS `Anos trabalhados`
FROM hr.employees AS te
INNER JOIN hr.job_history AS tjh
ON te.employee_id = tjh.employee_id
ORDER BY 1, 4;
