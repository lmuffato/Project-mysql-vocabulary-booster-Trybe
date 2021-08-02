SELECT CONCAT(n.first_name, ' ', n.last_name)
AS `Nome completo`,
j.job_title
AS `Cargo`,
jh.start_date
AS `Data de início do cargo`,
d.department_name
AS `Departamento`
FROM hr.employees AS n
INNER JOIN hr.jobs AS j
INNER JOIN hr.departments AS d
INNER JOIN hr.job_history AS jh
ON ((d.department_id = jh.department_id)
AND (j.JOB_ID = jh.JOB_ID) AND (jh.employee_id = n.employee_id))
ORDER BY `Nome completo` DESC, j.job_title ASC;
