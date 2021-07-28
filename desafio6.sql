SELECT 
    CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) AS 'Nome completo',
    job.JOB_TITLE AS 'Cargo',
    his.START_DATE AS 'Data de início do cargo',
    dep.DEPARTMENT_NAME AS 'Departamento'
FROM
    hr.job_history AS his
        INNER JOIN
    hr.employees AS emp ON his.EMPLOYEE_ID = emp.EMPLOYEE_ID
        INNER JOIN
    hr.jobs AS job ON his.JOB_ID = job.JOB_ID
        INNER JOIN
    hr.departments AS dep ON his.DEPARTMENT_ID = dep.DEPARTMENT_ID
ORDER BY `Nome completo` DESC , job.JOB_TITLE ASC;
