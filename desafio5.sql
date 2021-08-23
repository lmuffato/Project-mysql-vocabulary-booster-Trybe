SELECT job_title AS 'Cargo', (max_salary - min_salary) AS 'Variação Salarial', CONVERT(min_salary / 12, DECIMAL(10,2)) AS 'Média mínima mensal', CONVERT(max_salary / 12, DECIMAL(10,2)) AS 'Média máxima mensal'  
FROM jobs
ORDER BY (max_salary - min_salary) ASC, job_title;