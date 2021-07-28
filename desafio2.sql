-- 2 - Exiba os cargos com seu nível de renumeração associado, com base no salário máximo do cargo
--      Categorize o nível de remuneração de cada cargo.
--      Use o banco hr como referência
--      Seu relatório deve possuir as seguintes colunas:
--      A primeira deve possuir o alias "Cargo" e exibir o nome do cargo.
--      A segunda deve possuir o alias "Nível" e exibir o nível de remuneração do cargo com base no seu salário máximo, categorizando os níveis de remuneração da seguinte forma:
--      Salário máximo entre 5000 e 10000 arrow_right Baixo
--      Salário máximo entre 10001 e 20000 arrow_right Médio
--      Salário máximo entre 20001 e 30000 arrow_right Alto
--      Salário máximo acima de 30000 arrow_right Altíssimo
--      Os resultados devem estar ordenados pelo nome do cargo em ordem alfabética.
SELECT
  JOB_TITLE AS `Cargo`,
  CASE
    WHEN MAX_SALARY BETWEEN 5000
    AND 10000 THEN 'Baixo'
    WHEN MAX_SALARY BETWEEN 10001
    AND 20000 THEN 'Médio'
    WHEN MAX_SALARY BETWEEN 20001
    AND 30000 THEN 'Alto'
    WHEN MAX_SALARY > 30000 THEN 'Altíssimo'
  END AS `Nível`
FROM
  hr.jobs
ORDER BY
  `Cargo`;
