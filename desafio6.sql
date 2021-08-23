SELECT CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
j.JOB_TITLE 'Cargo',
h.START_DATE 'Data de início do cargo',
d.DEPARTMENT_NAME 'Departamento'
FROM hr.employees e
INNER JOIN hr.job_history h
ON h.EMPLOYEE_ID = e.EMPLOYEE_ID
INNER JOIN hr.jobs j
ON h.JOB_ID = j.JOB_ID
INNER JOIN hr.departments d
ON h.DEPARTMENT_ID = d.DEPARTMENT_ID
ORDER BY CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) DESC, j.JOB_TITLE;
