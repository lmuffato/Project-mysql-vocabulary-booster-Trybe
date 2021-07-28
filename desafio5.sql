SELECT job_title AS 'Cargo',
(max_salary - min_salary) AS 'Variação Salarial',
ROUND(AVG(min_salary)) AS 'Média mínima mensal',
ROUND(AVG(max_salary)) AS 'Média máxima mensal'
FROM hr.jobs
GROUP BY job_id
ORDER BY (max_salary - min_salary) ASC, job_title ASC;
