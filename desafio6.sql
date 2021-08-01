SELECT CONCAT(FIRST_NAME, ' ', LAST_NAME) AS 'Nome completo',
job_title AS 'Cargo',
start_date AS 'Data de início do cargo',
department_name AS 'Departamento'
FROM hr.employees as t1
INNER JOIN hr.job_history as t2
ON t1.employee_id = t2.employee_id
INNER JOIN hr.departments as t3
ON t2.DEPARTMENT_ID = t3.DEPARTMENT_ID
INNER JOIN hr.jobs as t4
ON t4.JOB_ID = t1.JOB_ID
ORDER BY CONCAT(FIRST_NAME, ' ', LAST_NAME) DESC, Cargo ASC;
