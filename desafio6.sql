-- challenge 6;

SELECT CONCAT(first_name, ' ', last_name) AS `Nome completo`,
job_title AS Cargo,
hire_date AS `Data de início do cargo`,
department_name AS Departamento
FROM hr.employees AS employees
INNER JOIN hr.jobs AS jobs
ON jobs.job_id=employees.job_id
INNER JOIN hr.departments AS departments
ON departments.department_id=employees.department_id
ORDER BY `Nome completo` DESC, Cargo;
