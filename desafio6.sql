SELECT
CONCAT(UCASE(e.FIRST_NAME),' ',UCASE(e.LAST_NAME)) AS 'Nome completo',
j.JOB_ID AS 'Cargo',
j.START_DATE AS 'Data de início do cargo',
j.DEPARTMENT_ID AS 'Departamento'
FROM hr.job_history AS j
INNER JOIN hr.employees AS e
ON e.EMPLOYEE_ID = J.EMPLOYEE_ID
ORDER BY CONCAT(UCASE(e.FIRST_NAME),' ',UCASE(e.LAST_NAME)) ASC, j.JOB_ID ASC;
