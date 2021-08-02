SELECT CONCAT (e.first_name, ' ', e.last_name) AS `Nome completo`,
j.job_title AS `Cargo`,
jh.start_date AS `Data de início do cargo`,
d.department_name AS `Departamento`
FROM hr.job_history jh
INNER JOIN hr.employees e
ON e.employee_id = jh.employee_id
INNER JOIN hr.jobs j 
ON jh.job_id = j.job_id
INNER JOIN hr.departments d
ON d.department_id = jh.department_id
ORDER BY `Nome completo` DESC, `Cargo`;
