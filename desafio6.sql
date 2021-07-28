SELECT
    CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS `Nome completo`,
    j.JOB_TITLE AS `Cargo`,
    jh.START_DATE AS `Data de início do cargo`,
    d.DEPARTMENT_NAME AS `Departamento`
FROM
    employees AS e
JOIN
    job_history AS jh
ON
    jh.EMPLOYEE_ID = e.EMPLOYEE_ID
JOIN
    jobs AS j
ON
    j.JOB_ID = jh.JOB_ID
JOIN
    departments AS d
ON
    jh.DEPARTMENT_ID = d.DEPARTMENT_ID
ORDER BY
    `Nome completo` DESC,
    j.JOB_TITLE ASC;
