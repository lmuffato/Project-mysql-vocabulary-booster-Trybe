SELECT CONCAT(ce.first_name, " ", ce.last_name) AS `Nome completo`,
cj.job_title AS `Cargo`,
cjh.start_date AS `Data de início do cargo`,
cd.department_name AS `Departamento`
FROM hr.employees AS ce
INNER JOIN hr.jobs AS cj
INNER JOIN hr.departments AS cd
INNER JOIN hr.job_history AS cjh
ON ((cjh.department_id = cd.department_id)
AND (cj.job_id = cjh.job_id) AND (cjh.employee_id = ce.employee_id))
ORDER BY 1 DESC, 2;
