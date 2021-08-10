SELECT CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) AS 'Nome completo',
j.JOB_TITLE AS 'Cargo',
histo.START_DATE AS 'Data de início do cargo',
depart.DEPARTMENT_NAME AS 'Departamento'
FROM hr.employees AS emp
INNER JOIN hr.job_history AS histo
ON histo.EMPLOYEE_ID = emp.EMPLOYEE_ID
INNER JOIN hr.jobs AS j
ON histo.JOB_ID = j.JOB_ID
INNER JOIN hr.departments AS depart
ON histo.DEPARTMENT_ID = depart.DEPARTMENT_ID
ORDER BY CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) DESC, j.JOB_TITLE;
