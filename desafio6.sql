SELECT CONCAT(e.first_name, ' ', e.last_name) AS `Nome completo`,
j.job_title AS `Cargo`,
jh.start_date AS `Data de início do cargo`,
d.department_name AS `Departamento`
FROM hr.job_history AS jh
INNER JOIN hr.employees AS e
ON jh.employee_ID = e.employee_ID
INNER JOIN hr.jobs AS j
ON j.job_ID = jh.job_ID
INNER JOIN hr.departments AS d
ON jh.department_ID = d.department_ID
ORDER BY `Nome completo` DESC, `Cargo` ASC;
