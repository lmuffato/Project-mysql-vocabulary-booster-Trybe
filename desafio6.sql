SELECT CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
j.JOB_TITLE,
jh.START_DATE AS 'Data de início do cargo',
d.DEPARTMENT_NAME AS 'Departamento' 
FROM hr.employees AS e
INNER JOIN 
hr.jobs AS j
ON e.JOB_ID = j.job_id
INNER JOIN 
hr.job_history AS jh
ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
INNER JOIN
hr.departments AS d 
ON d.DEPARTMENT_ID = e.DEPARTMENT_ID
ORDER BY CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) DESC, j.JOB_TITLE ASC;
