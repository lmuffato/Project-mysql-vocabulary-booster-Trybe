SELECT
CONCAT(e.FIRST_NAME,' ',e.LAST_NAME) AS 'Nome completo',
CONCAT(RIGHT(j.START_DATE,2),'/',SUBSTRING(j.START_DATE,6,2),'/',YEAR(j.START_DATE)) AS 'Data de início',
CONCAT(RIGHT(j.END_DATE,2),'/',SUBSTRING(j.END_DATE,6,2),'/',YEAR(j.END_DATE)) AS 'Data de rescisão',
ROUND(DATEDIFF(j.END_DATE,j.START_DATE)/365,2) AS 'Anos trabalhados'
FROM hr.employees AS e
INNER JOIN hr.job_history AS j
ON e.EMPLOYEE_ID = j.EMPLOYEE_ID
ORDER BY `Nome completo` ASC, `Anos trabalhados` ASC;
