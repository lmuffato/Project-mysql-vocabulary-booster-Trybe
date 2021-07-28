SELECT CONCAT(t1.FIRST_NAME,' ', t1.LAST_NAME) AS `Nome completo`,
(SELECT t2.JOB_TITLE FROM hr.jobs AS t2
WHERE t2.JOB_ID = t3.JOB_ID) AS Cargo,
t3.START_DATE AS `Data de início do cargo`,
(SELECT t4.DEPARTMENT_NAME FROM hr.departments AS t4
WHERE t4.DEPARTMENT_ID = t3.DEPARTMENT_ID) AS Departamento
FROM hr.job_history AS t3
INNER JOIN hr.employees AS t1
ON t3.EMPLOYEE_ID = t1.EMPLOYEE_ID
ORDER BY `Nome completo` DESC, Cargo;
