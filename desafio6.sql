SELECT CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',  j.JOB_TITLE AS 'Cargo',  jh.START_DATE AS 'Data de início do cargo', d.DEPARTMENT_NAME AS 'Departamento'
FROM hr.employees AS e
INNER JOIN hr.job_history AS jh
INNER JOIN hr.jobs AS j 
INNER JOIN hr.departments AS d 
ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID AND j.JOB_ID = jh.JOB_ID AND d.DEPARTMENT_ID = jh.DEPARTMENT_ID 
ORDER BY `Nome completo` DESC, `Cargo` ASC;
