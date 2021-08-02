SELECT
    j.job_title Cargo,
    ROUND(AVG(e.salary), 2) 'Média salarial',
    CASE
        WHEN AVG(e.salary) BETWEEN 2000 AND 5800 THEN 'Júnior'
        WHEN AVG(e.salary) BETWEEN 5801 AND 7500 THEN 'Pleno'
        WHEN AVG(e.salary) BETWEEN 7501 AND 10500 THEN 'Sênior'
        ELSE 'CEO'
    END Senioridade
FROM
    hr.jobs j
INNER JOIN
    hr.employees e
USING
    (job_id)
GROUP BY
    1
ORDER BY
    2, 1;
