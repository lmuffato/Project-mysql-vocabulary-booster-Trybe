/* 18 - Faça um relatório que mostra o histórico de cargos das pessoas empregadas, mostrando as datas de início e de saída, assim como os anos que ela ficou nesse cargo
Use o banco hr como referência

Faça um relatório que mostra o histórico de cargos das pessoas empregadas, mostrando as datas de início e de saída, assim como os anos que ela ficou nesse cargo. Para isso, usando o banco hr como referência, monte uma query que exiba quatro colunas:

  A) A primeira coluna deve possuir o alias "Nome completo" e exibir o nome completo da pessoa empregada (não se esqueça do espaço entre o nome e o sobrenome).
  B) A segunda coluna deve possuir o alias "Data de início" e exibir a data que a pessoa iniciou o cargo, no formato brasileiro (dd/mm/aaaa). Ou seja, se a pessoa iniciou o cargo em questão no dia 2 de janeiro de 1990, sua data de início deveria ser 02/01/1990.
  C) A terceira coluna deve possuir o alias "Data de rescisão" e exibir a data que a pessoa saiu do cargo, no formato brasileiro (dd/mm/aaaa). Ou seja, se a pessoa saiu do cargo em questão no dia 3 de setembro de 1995, sua data de rescisão deveria ser 03/09/1995.
  D) A quarta coluna deve possuir o alias "Anos trabalhados" e exibir, usando como base as datas de saída e entrada, os anos que a pessoa ficou no cargo em questão, arredondados para duas casas decimais.

Os resultados devem estar ordenados pelo nome completo das pessoas empregadas em ordem alfabética. Em caso de empate no nome completo, ordene os resultados pelos anos trabalhados por ela no cargo em questão, em ordem crescente. */

-- Ideia para criação dos anos no formato esperado no teste, obtido através do gabarito dos exercícios 14 e 15 do bloco 21.1
-- link: https://app.betrybe.com/course/back-end/sql/common-functions/solutions#exercicios
SELECT
CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS `Nome completo`,
CONCAT(
  RIGHT(jh.START_DATE, 2), '/', SUBSTRING(jh.START_DATE, 6, 2), '/', YEAR(jh.START_DATE)
) AS `Data de início`,
CONCAT(
  RIGHT(jh.END_DATE, 2), '/', SUBSTRING(jh.END_DATE, 6, 2), '/', YEAR(jh.END_DATE)
) AS `Data de rescisão`,
ROUND(DATEDIFF(jh.END_DATE, jh.START_DATE) / 365, 2) AS `Anos trabalhados`
FROM hr.employees e
INNER JOIN hr.job_history jh
ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
ORDER BY `Nome completo`, `Anos trabalhados`;
