SELECT UCASE(CONCAT(employees.first_name, ' ', employees.last_name)) AS 'Nome completo',
job_history.start_date AS 'Data de início',
employees.salary AS Salário
FROM hr.job_history AS job_history
INNER JOIN employees AS employees
ON employees.employee_id = job_history.employee_id
WHERE MONTH(job_history.start_date) IN(01, 02, 03)
ORDER BY `Nome Completo`, `Data de início`;

-- Link explicando sobre usar INNER JOIN com WHERE:
-- https://pt.stackoverflow.com/questions/166025/usando-where-com-inner-join
