SELECT UCASE(CONCAT(FIRST_NAME, ' ', LAST_NAME)) AS 'Nome completo',
start_date AS 'Data de início',
salary AS 'Salário'
FROM hr.employees as t1
INNER JOIN hr.job_history as t2
ON t1.EMPLOYEE_ID = t2.EMPLOYEE_ID
WHERE MONTH(start_date) BETWEEN 1 AND 3
ORDER BY CONCAT(FIRST_NAME, ' ', LAST_NAME),start_date;
