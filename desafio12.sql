-- 12 - Faça um relatório que lista todas as pessoas funcionárias que possuem o mesmo cargo
SELECT
  CONCAT(e1.FIRST_NAME, " ", e1.LAST_NAME) AS `Nome completo funcionário 1`,
  e1.SALARY AS `Salário funcionário 1`,
  e1.PHONE_NUMBER AS `Telefone funcionário 1`,
  CONCAT(e2.FIRST_NAME, " ", e2.LAST_NAME) AS `Nome completo funcionário 2`,
  e2.SALARY AS `Salário funcionário 2`,
  e2.PHONE_NUMBER AS `Telefone funcionário 2`
FROM hr.employees AS e1
CROSS JOIN hr.employees AS e2
ON e1.JOB_ID = e2.JOB_ID
WHERE e1.JOB_ID = e2.JOB_ID AND e1.PHONE_NUMBER <> e2.PHONE_NUMBER
ORDER BY `Nome completo funcionário 1` ASC, `Nome completo funcionário 2` ASC;
