SELECT j.JOB_TITLE AS Cargo,
(MAX_SALARY - MIN_SALARY) AS 'Variação Salarial',
ROUND((AVG(MIN_SALARY) / 12), 2) AS 'Média mínima mensal',
ROUND((AVG(MAX_SALARY) / 12), 2) AS 'Média máxima mensal'
FROM hr.jobs AS j
INNER JOIN hr.employees AS e
ON j.JOB_ID = e.JOB_ID
GROUP BY j.JOB_ID
ORDER BY (MAX_SALARY - MIN_SALARY) ASC, Cargo ASC;

-- I was having some problems with this requirement so I took a look in another PR
-- https://github.com/tryber/sd-010-a-mysql-vocabulary-booster/pull/87/files
