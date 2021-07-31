SELECT CONCAT(employees.first_name, ' ', employees.last_name) AS 'Nome completo',
jobs.JOB_TITLE AS Cargo,
history.START_DATE AS 'Data de início do cargo',
department.DEPARTMENT_NAME AS 'Departamento'
FROM hr.jobs AS jobs
INNER JOIN
hr.job_history AS history
INNER JOIN
hr.departments AS department
INNER JOIN 
hr.employees AS employees
ON
jobs.JOB_ID = history.JOB_ID 
AND
history.DEPARTMENT_ID = department.DEPARTMENT_ID
AND
employees.EMPLOYEE_ID = history.EMPLOYEE_ID
ORDER BY `Nome Completo` DESC, Cargo;

