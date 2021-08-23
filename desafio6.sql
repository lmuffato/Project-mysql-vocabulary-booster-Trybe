SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Nome completo', j.job_title AS 'Cargo', start_date AS 'Data de início do cargo', d.department_name AS 'Departamento' FROM job_history
INNER JOIN employees AS e
ON job_history.employee_id = e.employee_id
INNER JOIN jobs AS j
ON job_history.job_id = j.job_id
INNER JOIN departments AS d
ON job_history.department_id = d.department_id
ORDER BY CONCAT(e.first_name, ' ', e.last_name) DESC, j.job_title;
