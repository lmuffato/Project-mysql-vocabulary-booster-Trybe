SELECT 
    j.job_title,
    ROUND(AVG(salary), 2) AS 'Média salarial',
    CASE
        WHEN ROUND(AVG(salary), 2) BETWEEN 2000 AND 5800 THEN 'Júnior'
        WHEN ROUND(AVG(salary), 2) BETWEEN 5801 AND 7500 THEN 'Pleno'
        WHEN ROUND(AVG(salary), 2) BETWEEN 7501 AND 10500 THEN 'Sênior'
        WHEN ROUND(AVG(salary), 2) > 10500 THEN 'CEO'
    END AS 'Senioridade'
FROM
    hr.employees AS e
        INNER JOIN
    hr.jobs AS j ON e.job_id = j.job_id
GROUP BY j.job_title ORDER BY `Média salarial`, j.job_title;
