SELECT CONCAT(e.first_name,' ', e.last_name) as `Nome completo`, j.job_title as `Cargo`, h.start_date AS 'Data de início do cargo', d.department_name AS 'Departamento'
FROM hr.employees AS e
INNER JOIN hr.job_history as h
ON e.employee_id = h.employee_id
INNER JOIN hr.jobs as j
ON h.job_id = j.job_id
INNER JOIN hr.departments AS d
ON h.department_id = d.department_id
ORDER BY `Nome completo` DESC, `Cargo`;
