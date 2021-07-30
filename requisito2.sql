SELECT j.JOB_TITLE AS Cargo, 
CASE
        WHEN j.MAX_SALARY <= 10000 THEN 'Baixo'
        WHEN j.MAX_SALARY <= 20000 THEN 'Médio'
        WHEN j.MAX_SALARY <= 30000 THEN 'Alto'
        ELSE 'Altíssimo'
    END AS Nível FROM jobs j
ORDER BY j.JOB_TITLE ASC;
