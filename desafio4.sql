-- 4 - Exiba a média salarial e o nível de senioridade de todas as pessoas empregadas, agrupadas pelo cargo;
-- Precisei consultar o PR da Ana Ventura para perceber que era necessário usar o INNER JOIN para buscar a coluna SALARY
SELECT j.JOB_TITLE AS 'Cargo', ROUND(AVG(e.SALARY),2) AS 'Média Salarial',
CASE
  WHEN ROUND(AVG(e.SALARY),2) BETWEEN 2000 AND 5800 THEN 'Júnior'
  WHEN ROUND(AVG(e.SALARY),2) BETWEEN 5801 AND 7500 THEN 'Pleno'
  WHEN ROUND(AVG(e.SALARY),2) BETWEEN 7501 AND 10500 THEN 'Sênior'
  WHEN ROUND(AVG(e.SALARY),2) > 10500 THEN 'CEO'
END AS 'Senioridade'
FROM hr.jobs AS j
INNER JOIN hr.employees AS e
ON e.JOB_ID = j.JOB_ID
GROUP BY `Cargo`
ORDER BY `Média Salarial`, `Cargo`;
