SELECT CONCAT(UCASE(e.first_name), ' ', UCASE(e.last_name)) AS 'Nome completo', start_date AS 'Data de início', e.salary AS 'Salário' FROM job_history
INNER JOIN employees AS e
ON job_history.employee_id = e.employee_id
WHERE MONTH(start_date) = 1 OR MONTH(start_date) = 2 OR MONTH(start_date) = 3
ORDER BY CONCAT(e.first_name, ' ', e.last_name), start_date;
