SELECT CONCAT(e.first_name," ", e.last_name) AS 'Nome completo',
j.job_title AS 'Cargo',
jh.start_date AS 'Data de início do cargo',
d.department_name AS 'Departamento'
FROM hr.employees AS e
INNER JOIN hr.jobs AS j
ON j.job_id = e.job_id 
INNER JOIN hr.departments AS d
ON d.department_id = e.department_id
INNER JOIN hr.job_history as jh
ON jh.employee_id = e.employee_id
ORDER BY CONCAT(e.first_name," ", e.last_name) DESC, j.job_title ASC;
