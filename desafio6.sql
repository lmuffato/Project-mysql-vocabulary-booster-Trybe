SELECT CONCAT(e.first_name,' ', e.last_name) as 'Nome completo',
j.job_title AS 'Cargo',
jh.start_date AS 'Data de inicio do cargo',
d.department_name AS 'Departamento'
FROM hr.employees AS e
INNER JOIN hr.jobs AS j
INNER JOIN hr.departments AS d
INNER JOIN hr.job_history AS jh
ON ((d.department_id = jh.department_id)
AND (j.job_id = jh.job_id) AND (jh.employee_id = e.employee_id))
ORDER BY CONCAT(e.first_name,' ', e.last_name) DESC, j.job_title ASC;
