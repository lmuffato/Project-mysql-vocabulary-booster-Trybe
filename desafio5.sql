SELECT j.job_title AS 'Cargo',
max_salary - min_salary AS 'Variação salarial',
ROUND((min_salary / 12),2) AS 'Média mínima mensal',
ROUND((max_salary / 12),2) AS 'Média máxima mensal',
FROM hr.jobs
ORDER BY max_salary - min_salary, job_title;
