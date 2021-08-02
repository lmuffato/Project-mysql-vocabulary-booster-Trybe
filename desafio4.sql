SELECT j.JOB_TITLE as 'Cargo', ROUND(AVG(e.SALARY), 2) AS 'Média salarial',
    CASE
        WHEN AVG(e.SALARY) > 10500 THEN 'CEO'
        WHEN AVG(e.SALARY) > 7500 THEN 'Sênior'
        WHEN AVG(e.SALARY) > 5800 THEN 'Pleno'
        ELSE 'Júnior'
    END AS 'Senioridade'
FROM
    hr.employees AS e
        INNER JOIN
    hr.jobs AS j ON e.JOB_ID = j.JOB_ID
GROUP BY e.JOB_ID
ORDER BY AVG(e.SALARY) ASC, j.JOB_TITLE ASC;
