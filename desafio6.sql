SELECT 
    CONCAT(fun.FIRST_NAME, ' ', fun.LAST_NAME) AS 'Nome completo',
    jb.JOB_TITLE AS Cargo,
    jh.START_DATE AS 'Data de início do cargo',
    dp.DEPARTMENT_NAME AS Departamento
FROM
    hr.job_history AS jh
        INNER JOIN
    hr.employees AS fun ON fun.EMPLOYEE_ID = jh.EMPLOYEE_ID
        INNER JOIN
    hr.jobs AS jb ON jh.JOB_ID = jb.JOB_ID
        INNER JOIN
    hr.departments AS dp ON jh.DEPARTMENT_ID = dp.DEPARTMENT_ID
ORDER BY 1 DESC , 2;
