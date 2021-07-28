SELECT 
CONCAT(e.first_name, ' ', e.last_name) 'Nome completo',
j.job_title 'Cargo',
jh.start_date 'Data de início do cargo',
d.department_name 'Departamento'
FROM
hr.job_history AS jh
INNER JOIN
hr.employees AS e ON jh.employee_id = e.employee_id
INNER JOIN
hr.jobs AS j ON jh.job_id = j.job_id
INNER JOIN
hr.departments AS d ON jh.department_id = d.department_id
ORDER BY `Nome completo` DESC, `Cargo`;
