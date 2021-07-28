# 4 - Exiba a média salarial e o nível de senioridade de todas as pessoas empregadas, agrupadas pelo cargo
SELECT
    j.JOB_TITLE AS Cargo,
    ROUND(AVG(e.SALARY), 2) AS `Média Salarial`,
    CASE
        WHEN AVG(e.SALARY) BETWEEN 2000 AND 5800 THEN 'Júnior'
        WHEN AVG(e.SALARY) BETWEEN 5801 AND 7500 THEN 'Pleno'
        WHEN AVG(e.SALARY) BETWEEN 7501 AND 10500 THEN 'Sênior'
        ELSE 'CEO'
    END AS Senioridade
FROM
    hr.jobs j
        INNER JOIN
    hr.employees e ON j.JOB_ID = e.JOB_ID
GROUP BY e.JOB_ID
ORDER BY `Média Salarial` , Cargo ASC;
