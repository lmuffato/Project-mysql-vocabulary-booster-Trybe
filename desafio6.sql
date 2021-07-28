USE hr;
SELECT CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',  j.JOB_TITLE AS 'Cargo',  jh.START_DATE AS 'Data de início do cargo', d.DEPARTMENT_NAME
FROM employees AS e
INNER JOIN job_history AS jh
ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
INNER JOIN jobs AS j 
ON j.JOB_ID = jh.JOB_ID
INNER JOIN departments AS d 
ON d.DEPARTMENT_ID = e.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, 'Cargo';
