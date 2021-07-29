-- 12 - Faça um relatório que lista todas as pessoas funcionárias que possuem o mesmo cargo
SELECT CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS `Nome completo funcionário 1`,
e.SALARY AS `Salário funcionário 1`,
e.PHONE_NUMBER AS `Telefone funcionário 1`,
CONCAT(e2.FIRST_NAME, ' ', e2.LAST_NAME) AS `Nome completo funcionário 2`,
e2.SALARY AS `Salário funcionário 2`,
e2.PHONE_NUMBER AS `Telefone funcionário 2`
FROM hr.employees AS e, hr.employees AS e2
WHERE e.JOB_ID = e2.JOB_ID AND CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME)<>CONCAT(e2.FIRST_NAME, ' ', e2.LAST_NAME) 
ORDER BY `Nome completo funcionário 1`, `Nome completo funcionário 2`;