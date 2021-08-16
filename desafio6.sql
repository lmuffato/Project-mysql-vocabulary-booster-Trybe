SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Nome completo',
j.job_title AS 'Cargo',
jh.start_date AS 'Data de início do cargo',
d.department_name AS 'Departamento'
FROM hr.employees AS e
INNER JOIN hr.jobs AS j
INNER JOIN hr.job_history AS jh
INNER JOIN hr.departments AS d
ON jh.department_id = d.department_id
AND jh.job_id = j.job_id
AND jh.employee_id = e.employee_id
ORDER BY `Nome Completo` DESC, `Cargo` ASC;
