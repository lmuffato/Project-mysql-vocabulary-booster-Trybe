SELECT CONCAT(emp.first_name, " ", emp.last_name) AS "Nome completo",
DATE_FORMAT(hist.START_DATE, '%d/%m/%Y') AS "Data de início",
DATE_FORMAT(hist.END_DATE, '%d/%m/%Y') AS "Data de rescisão",
ROUND(DATEDIFF(hist.END_DATE, hist.START_DATE)/365, 2) AS "Anos trabalhados"
FROM hr.employees AS emp
INNER JOIN hr.job_history AS hist
ON hist.EMPLOYEE_ID = emp.EMPLOYEE_ID
ORDER BY CONCAT(emp.first_name, " ", emp.last_name), ROUND(DATEDIFF(hist.END_DATE, hist.START_DATE)/365, 2) ASC;
