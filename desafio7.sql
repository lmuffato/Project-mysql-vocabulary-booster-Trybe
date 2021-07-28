-- 7 - Faça um relatório que mostra o histórico de cargos das pessoas empregadas que iniciaram seus cargos nos meses de janeiro, fevereiro ou março
-- Use o banco hr como referência
-- Monte uma query que exiba 03 colunas:
-- A primeira deve possuir o alias "Nome completo" e exibir o nome completo da pessoa empregada em CAIXA ALTA (não se esqueça do espaço entre o nome e o sobrenome).
-- A segunda deve possuir o alias "Data de início" e exibir a data que a pessoa iniciou o cargo.
-- A terceira deve possuir o alias "Salário" e exibir o salário da pessoa.
-- Os resultados devem estar ordenados pelo nome completo das pessoas empregadas em ordem alfabética.
-- Em caso de empate no nome completo, ordene os resultados pela data de início que a pessoa iniciou seu cargo, em ordem crescente.

SELECT
  UCASE(CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME)) AS `Nome completo`,
  JH.START_DATE As `Data de início`,
  E.SALARY AS `Salário`
FROM hr.employees E
INNER JOIN hr.job_history JH
ON JH.EMPLOYEE_ID = E.EMPLOYEE_ID
WHERE MONTH(JH.START_DATE) IN (01, 02, 03)
ORDER BY `Nome completo`, `Data de início`;
