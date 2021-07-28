SELECT 
    (SELECT 
            JOB_TITLE
        FROM
            hr.jobs
        WHERE
            JOB_ID = hr.employees.JOB_ID
        ORDER BY JOB_TITLE) AS 'Cargo',
    ROUND(AVG(SALARY), 2) AS 'Média salarial',
    CASE
        WHEN AVG(SALARY) BETWEEN (2000) AND (5800) THEN 'Júnior'
        WHEN AVG(SALARY) BETWEEN (5801) AND (7500) THEN 'Pleno'
        WHEN AVG(SALARY) BETWEEN (7501) AND (10500) THEN 'Sênior'
        WHEN AVG(SALARY) > (10500) THEN 'CEO'
    END AS 'Senioridade'
FROM hr.employees
GROUP BY JOB_ID
ORDER BY AVG(SALARY) ASC, Cargo ASC;
