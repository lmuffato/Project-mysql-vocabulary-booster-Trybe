SELECT
JOB_TITLE AS Cargo,
jobs.MAX_SALARY - jobs.MIN_SALARY AS 'Variação Salarial',
ROUND(AVG(jobs.MIN_SALARY)/12, 2) AS 'Média mínima mensal',
ROUND(AVG(jobs.MAX_SALARY)/12, 2) AS 'Média máxima mensal'
FROM hr.jobs AS jobs
GROUP BY Cargo, `Variação salarial`
ORDER BY `Variação salarial`, Cargo;
