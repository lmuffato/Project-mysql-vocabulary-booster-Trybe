SELECT
CONCAT(e.first_name, ' ', e.last_name) `Nome completo`,
j.job_title `Cargo`,
jh.start_date `Data de início do cargo`,
d.department_name `Departamento`
FROM hr.job_history AS jh
INNER JOIN hr.employees AS e
ON e.employee_id = jh.employee_id
INNER JOIN hr.jobs AS j
ON j.job_id = jh.job_id
INNER JOIN hr.departments AS d
ON d.department_id = jh.department_id
ORDER BY `Nome completo` DESC, `Cargo`;
