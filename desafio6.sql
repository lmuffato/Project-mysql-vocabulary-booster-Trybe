SELECT 
    CONCAT(employ.FIRST_NAME, ' ', employ.LAST_NAME) AS "Nome completo",
    job.JOB_TITLE AS "Cargo",
    hty.START_DATE AS "Data de início do cargo",
    dep.DEPARTMENT_NAME AS "Departamento"
FROM
    hr.job_history AS hty
        INNER JOIN
    hr.employees AS employ ON hty.EMPLOYEE_ID = employ.EMPLOYEE_ID
        INNER JOIN
    hr.jobs AS job ON hty.JOB_ID = job.JOB_ID
        INNER JOIN
    hr.departments AS dep
WHERE
    dep.DEPARTMENT_ID = hty.DEPARTMENT_ID
ORDER BY `Nome completo` DESC , `Cargo`;
