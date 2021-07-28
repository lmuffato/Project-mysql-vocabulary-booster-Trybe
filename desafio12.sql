SELECT 
    CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS `Nome completo funcionário 1`,
    e.SALARY AS `Salário funcionário 1`,
    e.PHONE_NUMBER AS `Telefone funcionário 1`,
    CONCAT(ee.FIRST_NAME, ' ', ee.LAST_NAME) AS `Nome completo funcionário 2`,
    ee.SALARY AS `Salário funcionário 2`,
    ee.PHONE_NUMBER AS `Telefone funcionário 2`
FROM
    employees AS e
JOIN
    employees as ee
ON
    e.JOB_ID = ee.JOB_ID
WHERE
    e.EMPLOYEE_ID != ee.EMPLOYEE_ID
ORDER BY
    `Nome completo funcionário 1` ASC,
    `Nome completo funcionário 2` ASC;
