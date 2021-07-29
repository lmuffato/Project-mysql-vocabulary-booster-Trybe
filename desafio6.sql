SELECT CONCAT(E.FIRST_NAME,'',E.LAST_NAME) AS 'Nome completo', J.JOB_TITLE AS 'Cargo',
JH.START_DATE AS 'Data de início do cargo', D.DEPARTMENT_NAME AS 'Departamento'
FROM hr.job_history JH
INNER JOIN hr.jobs J
ON JH.JOB_ID = J.JOB_ID
INNER JOIN hr.employees E
ON JH.EMPLOYEE_ID = E.EMPLOYEE_ID
INNER JOIN hr.departments D
ON JH.DEPARTMENT_ID = D.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, `Cargo`;
