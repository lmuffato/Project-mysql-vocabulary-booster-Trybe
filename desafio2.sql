-- 2 - Exiba os cargos com seu nível de renumeração associado, com base no salário máximo do cargo
SELECT 
    JOB_TITLE 'Cargo',
    CASE
        WHEN MAX_SALARY <= 10000 THEN 'Baixo'
        WHEN MAX_SALARY <= 20000 THEN 'Médio'
        WHEN MAX_SALARY <= 3000 THEN 'Alto'
        ELSE 'Altíssimo'
    END 'Nível'
FROM
    hr.jobs
ORDER BY Cargo;
