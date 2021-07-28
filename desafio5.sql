SELECT j.job_title as `Cargo`, (max_salary - min_salary) AS `Variação Salarial`, ROUND(max_salary/12, 2) AS `Média máxima mensal`, ROUND(min_salary/12, 2) AS `Média mínima mensal`
FROM hr.jobs as j
INNER JOIN hr.employees as e
ON j.job_id = e.job_id
GROUP BY j.job_id
ORDER BY `Variação Salarial`, `Cargo`;
