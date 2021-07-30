SELECT CONCAT(FIRST_NAME, ' ', LAST_NAME) AS 'Nome completo',
job_title AS 'Cargo',
hire_date AS 'Data de início do cargo',
department_name AS 'Departamento'
FROM hr.employees as t1
INNER JOIN hr.jobs as t2
ON t1.JOB_ID = t2.JOB_ID
INNER JOIN hr.departments as t3
ON t1.DEPARTMENT_ID = t3.DEPARTMENT_ID
ORDER BY CONCAT(FIRST_NAME, ' ', LAST_NAME), Cargo;
