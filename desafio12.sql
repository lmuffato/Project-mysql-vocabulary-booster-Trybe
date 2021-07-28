# 12 - Faça um relatório que lista todas as pessoas funcionárias que possuem o mesmo cargo
SELECT
    CONCAT(e1.FIRST_NAME, ' ', e1.LAST_NAME) AS `Nome completo funcionário 1`,
    e1.SALARY AS `Salário funcionário 1`,
    e1.PHONE_NUMBER AS `Telefone funcionário 1`,
    CONCAT(e2.FIRST_NAME, ' ', e2.LAST_NAME) AS `Nome completo funcionário 2`,
    e2.SALARY AS `Salário funcionário 2`,
    e2.PHONE_NUMBER AS `Telefone funcionário 2`
FROM
    hr.employees e1,
    hr.employees e2
WHERE
    e1.JOB_ID = e2.JOB_ID
        AND e1.FIRST_NAME <> e2.FIRST_NAME
ORDER BY `Nome completo funcionário 1` , `Nome completo funcionário 2` ASC;
