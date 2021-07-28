SELECT CONCAT(e.FIRST_NAME,' ', e.LAST_NAME) AS 'Nome Completo',
j.JOB_TITLE AS 'Cargo',
h.START_DATE AS 'Data de inicio do cargo',
d.DEPARTMENT_NAME AS 'Departamento'
FROM hr.job_history AS h
INNER JOIN hr.employees AS e
ON h.EMPLOYEE_ID = e.EMPLOYEE_ID
INNER JOIN hr.jobs AS j
ON j.JOB_ID = h.JOB_ID
INNER JOIN hr.departments AS d
ON d.DEPARTMENT_ID = h.DEPARTMENT_ID
ORDER BY `Nome Completo` DESC, `Cargo` ASC;
