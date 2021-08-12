SELECT concat(t1.FIRST_NAME, ' ', t1.LAST_NAME) AS 'Nome completo',
t2.JOB_TITLE AS 'Cargo',
t3.START_DATE AS 'Data de início do cargo',
t4.DEPARTMENT_NAME AS 'Departamento'
FROM hr.employees AS t1
INNER JOIN hr.jobs AS t2
ON t1.JOB_ID = t2.JOB_ID
INNER JOIN hr.job_history AS t3
ON t1.EMPLOYEE_ID = t3.EMPLOYEE_ID
INNER JOIN hr.departments AS t4
ON t1.DEPARTMENT_ID = t4.DEPARTMENT_ID
ORDER BY concat(t1.FIRST_NAME, ' ', t1.LAST_NAME) DESC, JOB_TITLE;
