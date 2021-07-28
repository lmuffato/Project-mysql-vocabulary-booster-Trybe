SELECT
    UCASE(CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME)) AS `Nome completo`,
    jh.START_DATE AS `Data de início`,
    e.SALARY AS `Salário`
FROM
    employees AS e
JOIN
    job_history AS jh
ON
    jh.EMPLOYEE_ID = e.EMPLOYEE_ID
HAVING
    MONTH(jh.START_DATE) IN (1,2,3)
ORDER BY
    `Nome completo` ASC,
    `Data de início` ASC;
