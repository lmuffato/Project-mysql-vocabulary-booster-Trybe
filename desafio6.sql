SELECT concat(employees.FIRST_NAME, ' ', employees.LAST_NAME) AS 'Nome completo',
jobs.JOB_TITLE AS 'Cargo',
job_history.START_DATE AS 'Data de início do cargo',
departments.DEPARTMENT_NAME AS 'Departamento'
FROM hr.employees AS employees
INNER JOIN hr.jobs AS jobs
INNER JOIN hr.job_history AS job_history
INNER JOIN hr.departments AS departments
ON job_history.DEPARTMENT_ID = departments.DEPARTMENT_ID
AND job_history.JOB_ID = jobs.JOB_ID
AND job_history.EMPLOYEE_ID = employees.EMPLOYEE_ID
ORDER BY concat(employees.FIRST_NAME, ' ', employees.LAST_NAME) DESC, JOB_TITLE ASC;
-- SELECT concat(t1.FIRST_NAME, ' ', t1.LAST_NAME) AS 'Nome completo',
-- t2.JOB_TITLE AS 'Cargo',
-- t3.START_DATE AS 'Data de início do cargo',
-- t4.DEPARTMENT_NAME AS 'Departamento'
-- FROM hr.employees AS t1
-- INNER JOIN hr.jobs AS t2
-- ON t1.JOB_ID = t2.JOB_ID
-- INNER JOIN hr.job_history AS t3
-- ON t1.EMPLOYEE_ID = t3.EMPLOYEE_ID
-- INNER JOIN hr.departments AS t4
-- ON t1.DEPARTMENT_ID = t4.DEPARTMENT_ID
-- ORDER BY concat(t1.FIRST_NAME, ' ', t1.LAST_NAME) DESC, JOB_TITLE ASC;
