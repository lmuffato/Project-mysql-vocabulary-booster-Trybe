SELECT j.JOB_TITLE AS `Cargo`, (MAX(e.SALARY) - MIN(e.SALARY)) AS `Variação Salarial`,
ROUND(MIN(e.SALARY), 2) AS `Média mínima mensal`, ROUND(MAX(e.SALARY), 2) AS `Média máxima mensal`
FROM hr.employees AS e
INNER JOIN hr.jobs AS j
ON e.JOB_ID = j.JOB_ID
GROUP BY j.JOB_TITLE
ORDER BY `Variação Salarial`, `Cargo`;
