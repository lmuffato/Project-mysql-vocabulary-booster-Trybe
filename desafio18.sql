SELECT
concat(e.FIRST_NAME,' ',e.LAST_NAME) AS 'Nome completo',
concat(right(j.START_DATE,2),'/',substring(j.START_DATE,6,2),'/',year(j.START_DATE)) AS 'Data de início',
concat(right(j.END_DATE,2),'/',substring(j.END_DATE,6,2),'/',year(j.END_DATE)) AS 'Data de rescisão',
round(datediff(j.END_DATE,j.START_DATE)/365,2) AS 'Anos trabalhados'
FROM hr.employees AS e
INNER JOIN hr.job_history AS j
ON e.EMPLOYEE_ID = j.EMPLOYEE_ID
ORDER BY `Nome completo` ASC, `Anos trabalhados` ASC;
