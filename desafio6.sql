SELECT 
    CONCAT(FIRST_NAME, ' ', LAST_NAME) AS 'Nome completo',
    JOB_TITLE AS 'Cargo',
    START_DATE AS 'Data de início do cargo',
    DEPARTMENT_NAME AS 'Departamento'
FROM
    hr.job_history AS jh
        LEFT JOIN
    hr.employees AS em ON jh.EMPLOYEE_ID = em.EMPLOYEE_ID
        INNER JOIN
    hr.jobs AS jo ON jh.JOB_ID = jo.JOB_ID
        INNER JOIN
    hr.departments AS de ON jh.DEPARTMENT_ID = de.DEPARTMENT_ID
ORDER BY `Nome completo` DESC , `Cargo` ASC
