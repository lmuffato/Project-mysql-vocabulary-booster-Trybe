-- 5 - Exiba os cargos com sua variação salarial e suas médias máxima e mínima mensal,
-- considerando salários máximo e mínimo como anuais;

SELECT j.JOB_TITLE AS 'Cargo',
j.MAX_SALARY - j.MIN_SALARY AS 'Variação Salarial',
ROUND(AVG(j.MIN_SALARY)/12, 2) AS 'Média mínima mensal',
ROUND(AVG(j.MAX_SALARY)/12, 2) AS 'Média máxima mensal'
FROM hr.jobs AS j
INNER JOIN hr.employees AS e
ON e.JOB_ID = j.JOB_ID
GROUP BY `Cargo`, `Variação Salarial` 
ORDER BY `Variação Salarial`, `Cargo`;
