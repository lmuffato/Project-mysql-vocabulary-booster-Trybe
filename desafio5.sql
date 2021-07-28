SELECT job_title AS Cargo,
jobs.max_salary - jobs.min_salary AS 'Variação Salarial',
ROUND(AVG(jobs.min_salary) /12, 2) AS 'Média mínima mensal',
ROUND(AVG(jobs.max_salary) /12, 2) AS 'Média máxima mensal'
FROM hr.jobs AS jobs
GROUP BY Cargo, `Variação salarial`
ORDER BY `Variação salarial`, Cargo;
