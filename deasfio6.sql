SELECT CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) AS 'Nome completo',
j.JOB_TITLE AS Cargo,
histo.START_DATE AS 'Data de início do cargo',
depart.DEPARTMENT_NAME AS Departamento
FROM hr.employees AS emp
INNER JOIN hr.job_history AS histo
ON histo.EMPLOYEE_ID = emp.EMPLOYEE_ID
INNER JOIN hr.jobs AS j
ON j.JOB_ID = histo.JOB_ID
INNER JOIN hr.departments AS depart
ON depart.DEPARTMENT_ID = histo.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, Cargo;
