SELECT job_title `Cargo`,
(max_salary - min_salary) 'Variação Salarial',
ROUND((min_salary / 12), 2) 'Média mínima mensal',
ROUND((max_salary / 12), 2) 'Média máxima mensal'
FROM hr.jobs
ORDER BY `Variação Salarial`, `Cargo`;
