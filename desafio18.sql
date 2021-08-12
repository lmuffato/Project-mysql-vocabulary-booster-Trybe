-- challenge 18;
-- https://stackoverflow.com/questions/10637581/mysql-date-format-dd-mm-yyyy-select-query

SELECT CONCAT(FIRST_NAME, ' ', LAST_NAME) AS `Nome completo`,
DATE_FORMAT(job_history.START_DATE, '%d/%m/%y') AS `Data de início`,
DATE_FORMAT(job_history.END_DATE, '%d/%m/%y') AS `Data de início`,
ROUND(DATEDIFF(END_DATE, START_DATE) / 365.25, 2)  AS `Anos trabalhados`
FROM hr.employees AS employees INNER JOIN hr.job_history AS job_history
ON employees.EMPLOYEE_ID=job_history.EMPLOYEE_ID
ORDER BY `Nome completo`, `Anos trabalhados`;
