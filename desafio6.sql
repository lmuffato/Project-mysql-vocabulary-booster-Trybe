SELECT CONCAT(employees.first_name, ' ', employees.last_name) AS 'Nome completo',
jobs.job_title AS Cargo,
employees.hire_date AS 'Data de início do cargo',
departments.department_name AS 'Departamento'
FROM hr.employees AS employees
INNER JOIN jobs AS jobs
ON employees.job_id = jobs.job_id
INNER JOIN departments AS departments
ON employees.department_id = departments.department_id
ORDER BY `Nome Completo` DESC, Cargo;
