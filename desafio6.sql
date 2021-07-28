SELECT CONCAT(employees.first_name, ' ', employees.last_name) AS 'Nome completo',
jobs.JOB_TITLE AS Cargo,
employees.HIRE_DATE AS 'Data de início do cargo',
department.DEPARTMENT_NAME AS 'Departamento'
FROM hr.jobs AS jobs
INNER JOIN
hr.employees AS employees
INNER JOIN
hr.departments AS department
ON
jobs.JOB_ID = employees.JOB_ID 
AND
employees.DEPARTMENT_ID = department.DEPARTMENT_ID
ORDER BY `Nome Completo` DESC, Cargo;
