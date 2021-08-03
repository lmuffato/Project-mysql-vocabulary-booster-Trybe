-- challenge 6;

SELECT CONCAT(first_name, ' ', last_name) AS `Nome completo`,
job_title AS Cargo,
start_date AS `Data de início do cargo`,
department_name AS Departamento
FROM hr.job_history AS history_JOB
INNER JOIN hr.employees AS employees
ON employees.employee_id=history_JOB.employee_id
INNER JOIN hr.jobs AS jobs
ON history_JOB.job_id=jobs.job_id
INNER JOIN hr.departments AS departments
ON departments.department_id=history_JOB.department_id;
