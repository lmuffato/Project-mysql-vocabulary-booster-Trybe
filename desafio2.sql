SELECT
    job_title AS Cargo,
    CASE
        WHEN max_salary >= 5000 AND max_salary <= 10000 THEN 'Baixo'
        WHEN max_salary >= 10001 AND max_salary <= 20000 THEN 'Médio'
        WHEN max_salary >= 20001 AND max_salary <= 30000 THEN 'Alto'
        WHEN max_salary > 30000 THEN 'Altíssimo'
        ELSE ''
    END AS Nível
FROM jobs
ORDER BY job_title;
