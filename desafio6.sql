SELECT CONCAT(t1.FIRST_NAME, ' ', t1.LAST_NAME) AS 'Nome Completo',
t3.JOB_TITLE AS 'Cargo',
t2.START_DATE AS 'Data de inicio do cargo',
t4.DEPARTMENT_NAME AS 'Departamento'
FROM hr.employees AS t1
INNER JOIN hr.job_history AS t2 ON t1.EMPLOYEE_ID = t2.EMPLOYEE_ID
INNER JOIN hr.jobs AS t3 ON t2.JOB_ID = t3.JOB_ID
INNER JOIN hr.departments AS t4 ON t2.DEPARTMENT_ID = t4.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, `Cargo` ASC;
