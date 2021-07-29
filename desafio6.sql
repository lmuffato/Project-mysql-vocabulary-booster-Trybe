SELECT(SELECT concat(first_name, ' ', last_name) FROM hr.employees
WHERE employee_id = hr.job_history.employee_id) AS 'Nome completo',
(SELECT job_title FROM hr.jobs
WHERE job_id = hr.job_history.job_id ) AS Cargo,
start_date AS 'Data de início do cargo',
(SELECT department_name FROM hr.departments
WHERE department_id = hr.job_history.department_id) AS Departamento
FROM hr.job_history
WHERE start_date <> 0000-00-00
ORDER BY 1 DESC, 2;
