-- Faça um relatório que lista todas as pessoas funcionárias que possuem o mesmo cargo.
-- Monte uma query que exiba 06 colunas:

-- A primeira deve possuir o alias "Nome completo funcionário 1" e exibir o nome completo da pessoa
-- funcionária (não se esqueça do espaço entre o nome e o sobrenome).
SELECT CONCAT(firstFunc.FIRST_NAME, ' ',firstFunc.LAST_NAME) AS `Nome completo funcionário 1`,
firstFunc.SALARY AS `Salário funcionário 1`,
firstFunc.PHONE_NUMBER AS `Telefone funcionário 1`,
CONCAT(secFunc.FIRST_NAME, ' ',secFunc.LAST_NAME) AS `Nome completo funcionário 2`,
secFunc.SALARY AS `Salário funcionário 2`,
secFunc.PHONE_NUMBER AS `Telefone funcionário 2`
FROM hr.employees AS `firstFunc`, hr.employees AS `secFunc`
WHERE firstFunc.JOB_ID = secFunc.JOB_ID
AND firstFunc.EMPLOYEE_ID <> secFunc.EMPLOYEE_ID
ORDER BY `Nome completo funcionário 1`, `Nome completo funcionário 2`;
