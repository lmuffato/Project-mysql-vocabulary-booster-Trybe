-- 6. Faça um relatório que mostra o histórico de cargos das pessoas empregadas
SELECT
CONCAT(e.first_name," ", e.last_name)
AS 'Nome completo',
j.job_title
AS 'Cargo',
jh.start_date
AS 'Data de início do cargo',
d.department_name
AS 'Departamento'
FROM hr.employees AS e
INNER JOIN hr.jobs AS j
INNER JOIN hr.departments AS d
INNER JOIN hr.job_history AS jh
ON ((d.department_id = jh.department_id)
AND (j.JOB_ID = jh.JOB_ID) AND (jh.employee_id = e.employee_id))
ORDER BY CONCAT(e.first_name," ", e.last_name) DESC, j.job_title ASC;
