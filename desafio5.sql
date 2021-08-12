SELECT job_title AS 'Cargo',
max_salary - min_salary AS 'Variação Salarial',
ROUND(AVG(min_salary / 12), 2) AS 'Média mínima mensal',
ROUND(AVG(max_salary / 12), 2) AS 'Média máxima mensal'
FROM hr.jobs
GROUP BY job_title
ORDER BY max_salary - min_salary, job_title;
