SELECT 
    job_title AS 'Cargo',
    CASE
        WHEN max_salary BETWEEN 5000 AND 10000 THEN 'Baixo'
        WHEN max_salary BETWEEN 10001 AND 20000 THEN 'Médio'
        WHEN max_salary BETWEEN 20001 AND 30000 THEN 'Alto'
        ELSE 'Altíssimo'
    END AS 'Nível'
FROM
    hr.jobs
ORDER BY job_title ASC;
