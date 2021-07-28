SELECT CONCAT(e.first_name, ' ', e.last_name) AS `Nome completo`,
j.job_title AS `Cargo`,
jh.start_date AS `Data de início do cargo`,
d.department_name AS `Departamento`
FROM hr.job_history AS jh
JOIN hr.employees AS e
ON e.employee_id = jh.employee_id
JOIN hr.jobs AS j
ON j.job_id = jh.job_id
JOIN hr.departments AS d
ON d.department_id = jh.department_id
ORDER BY `Nome Completo` DESC, `Cargo`;
