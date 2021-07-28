SELECT j.JOB_TITLE AS `Cargo`, AVG(e.SALARY) AS `Média salarial`,
    CASE
        WHEN AVG(SALARY) >= 2000 AND AVG(SALARY) <= 5800 THEN 'Júnior'
        WHEN AVG(SALARY) >= 5801 AND AVG(SALARY) <= 7500 THEN 'Pleno'
        WHEN AVG(SALARY) >= 7501 AND AVG(SALARY) <= 10500 THEN 'Sênior'
        WHEN AVG(SALARY) > 10500 THEN 'CEO'
        ELSE 'Sem classificação'
    END AS `Nível`
FROM hr.employees AS e
INNER JOIN hr.jobs AS j
ON e.JOB_ID = j.JOB_ID
GROUP BY j.JOB_TITLE
ORDER BY `Média salarial`, j.JOB_TITLE;
