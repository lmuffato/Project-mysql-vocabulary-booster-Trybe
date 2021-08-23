SELECT CONCAT(emp.first_name, " ", emp.last_name) AS "Nome completo",
DATE_FORMAT(his.START_DATE, '%d/%m/%Y') AS "Data de início",
DATE_FORMAT(his.END_DATE, '%d/%m/%Y') AS "Data de rescisão",
ROUND(DATEDIFF(his.END_DATE, his.START_DATE)/365, 2) AS "Anos trabalhados"
FROM hr.employees AS emp
INNER JOIN hr.job_history AS his
ON his.EMPLOYEE_ID = emp.EMPLOYEE_ID
ORDER BY CONCAT(emp.first_name, " ", emp.last_name),
ROUND(DATEDIFF(his.END_DATE, his.START_DATE)/365, 2) ASC;
