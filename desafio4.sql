-- 4 - Exiba a média salarial e o nível de senioridade de todas as pessoas empregadas, agrupadas pelo cargo
SELECT 
    j.JOB_TITLE Cargo,
    ROUND(AVG(e.SALARY), 2) 'Média salarial',
    CASE
        WHEN ROUND(AVG(e.SALARY), 2) <= 5800 THEN 'Júnior'
        WHEN ROUND(AVG(e.SALARY), 2) <= 7500 THEN 'Pleno'
        WHEN ROUND(AVG(e.SALARY), 2) <= 10500 THEN 'Sênior'
        ELSE 'CEO'
    END 'Senioridade'
FROM
    hr.employees AS e
        INNER JOIN
    hr.jobs AS j ON j.JOB_ID = e.JOB_ID
GROUP BY j.JOB_TITLE
ORDER BY `Média salarial` , Cargo;
