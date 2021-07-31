-- SELECT * FROM hr.employees; -- t1
-- SELECT * FROM hr.jobs; -- t2 
-- SELECT * FROM hr.departments; -- t3 
-- SELECT * FROM hr.job_history; -- t4 

SELECT
CONCAT(t1.FIRST_NAME, ' ',t1.LAST_NAME) AS `Nome completo`,
t3.JOB_TITLE AS `Cargo`,
t2.START_DATE AS `Data de início do cargo`,
t4.DEPARTMENT_NAME AS `Departamento`
FROM hr.employees AS t1
INNER JOIN hr.job_history AS t2 ON t2.EMPLOYEE_ID = t1.EMPLOYEE_ID
INNER JOIN hr.jobs AS t3 ON t3.JOB_ID = t2.JOB_ID
INNER JOIN hr.departments AS t4 ON t4.DEPARTMENT_ID = t2.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, `Cargo`;
