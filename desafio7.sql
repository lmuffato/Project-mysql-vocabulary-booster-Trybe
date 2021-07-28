SELECT
UCASE(CONCAT(employees.first_name, ' ', employees.last_name)) AS 'Nome completo',
job_history.start_date AS 'Data de início',
employees.salary AS 'Salário'
FROM hr.employees AS employees 
INNER JOIN hr.job_history AS job_history ON job_history.employee_id = employees.employee_id
WHERE MONTH(job_history.start_date) BETWEEN 1 AND 3
ORDER BY `Nome completo`, job_history.start_date;
