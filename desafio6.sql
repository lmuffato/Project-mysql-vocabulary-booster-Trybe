SELECT
concat(first_name,' ',last_name) AS 'Nome Completo',j.JOB_TITLE AS 'Cargo', jh.START_DATE AS 'Data de início do cargo', d.DEPARTMENT_NAME AS Departamento
FROM hr.employees AS e
INNER JOIN hr.jobs AS j
ON e.JOB_ID = j.JOB_ID
LEFT JOIN hr.job_history AS jh
ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
LEFT JOIN hr.departments AS d
ON d.DEPARTMENT_ID = e.DEPARTMENT_ID
ORDER BY `Nome Completo` DESC, j.JOB_TITLE;
