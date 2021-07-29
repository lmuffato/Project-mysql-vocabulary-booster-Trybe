SELECT 
CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
j.JOB_TITLE AS 'Cargo',
jh.START_DATE AS 'Data de início do cargo',
d.DEPARTMENT_NAME AS 'Departamento'
FROM
hr.job_history AS jh
INNER JOIN
employees AS e ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
INNER JOIN
departments AS d ON jh.DEPARTMENT_ID = d.DEPARTMENT_ID
INNER JOIN
jobs AS j ON j.JOB_ID = jh.JOB_ID
ORDER BY `Nome Completo` DESC, `Cargo`;
