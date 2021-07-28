SELECT  
CONCAT(A.FIRST_NAME, ' ', A.LAST_NAME) AS `Nome completo`,
J1.JOB_TITLE  AS `Cargo`,
H.START_DATE AS 'Data de início do cargo',
D.DEPARTMENT_NAME AS 'Departamento'
FROM hr.employees AS A
INNER JOIN hr.jobs AS J
ON A.JOB_ID = J.JOB_ID
INNER JOIN hr.job_history AS H
ON A.EMPLOYEE_ID = H.EMPLOYEE_ID
INNER JOIN hr.departments AS D
ON D.DEPARTMENT_ID = H.DEPARTMENT_ID
INNER JOIN hr.jobs AS J1
ON J1.JOB_ID = H.JOB_ID
ORDER BY `Nome completo` DESC, `Cargo` ASC;
