SELECT 
	CONCAT(fun.FIRST_NAME, ' ', fun.LAST_NAME) AS 'Nome completo',
	jb.JOB_TITLE AS Cargo,
    jh.START_DATE AS 'Data de início do cargo',
    dp.DEPARTMENT_NAME AS Departamento
FROM hr.employees AS fun
INNER JOIN hr.jobs AS jb
	ON fun.JOB_ID = jb.JOB_ID
INNER JOIN hr.job_history AS jh
	ON fun.EMPLOYEE_ID = jh.EMPLOYEE_ID
INNER JOIN hr.departments AS dp
ON dp.DEPARTMENT_ID = fun.DEPARTMENT_ID
ORDER BY 1 DESC, 2;
