SELECT 
CONCAT(employee.first_name, ' ', employee.last_name) 'Nome completo',
job.job_title 'Cargo',
history.start_date 'Data de início do cargo',
department.department_name 'Departamento'
FROM
hr.job_history AS history
INNER JOIN
hr.employees AS employee ON history.employee_id = employee.employee_id
INNER JOIN
hr.jobs AS job ON history.job_id = job.job_id
INNER JOIN
hr.departments AS department ON history.department_id = department.department_id
ORDER BY `Nome completo` DESC, `Cargo`;
