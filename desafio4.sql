-- 4 - Exiba a média salarial e o nível de senioridade de todas as pessoas empregadas, agrupadas pelo cargo;
-- Precisei consultar o PR da Ana Ventura para perceber que era necessário usar o INNER JOIN para buscar a coluna SALARY
SELECT j.JOB_TITLE 
AS 'Cargo',
ROUND(AVG(e.SALARY), 2) 
AS 'Média Salarial',
CASE
  WHEN ROUND(AVG(e.SALARY), 2) >= 2000 AND ROUND(AVG(e.SALARY), 2) <= 5800 THEN 'Júnior'
  WHEN ROUND(AVG(e.SALARY), 2) >= 5801 AND ROUND(AVG(e.SALARY), 2) <= 7500 THEN 'Pleno'
  WHEN ROUND(AVG(e.SALARY), 2) >= 7501 AND ROUND(AVG(e.SALARY), 2) <= 10500 THEN 'Sênior'
  WHEN ROUND(AVG(e.SALARY), 2) > 10500 THEN 'CEO'
END AS 'Senioridade'
FROM hr.jobs 
AS j
INNER JOIN hr.employees 
AS e
ON e.JOB_ID = j.JOB_ID
GROUP BY e.job_id
ORDER BY ROUND(AVG(e.salary), 2) ASC, j.job_title ASC;
