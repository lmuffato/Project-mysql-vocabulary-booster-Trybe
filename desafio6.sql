SELECT 
	CONCAT(e.first_name, ' ', e.last_name) AS 'Nome completo',
    j.job_title AS Cargo,
    jh.start_date AS 'Data de início do cargo',
    d.department_name AS 'Departamento'

FROM employees AS e

INNER JOIN job_history AS jh 
ON jh.employee_id = e.employee_id 

INNER JOIN departments AS d
ON d.department_id = jh.department_id

INNER JOIN jobs AS j
ON j.job_id = jh.job_id

ORDER BY CONCAT(e.first_name, ' ', e.last_name) DESC, j.job_title ASC;
