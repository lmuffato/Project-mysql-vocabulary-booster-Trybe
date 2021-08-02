SELECT j.job_title AS Cargo, ROUND(AVG(j.max_salary + j.min_salary), 2) AS 'Média salarial', CASE
    WHEN AVG(j.max_salary + j.min_salary) BETWEEN 2000 AND 5800 THEN "Júnior"
    WHEN AVG(j.max_salary + j.min_salary) BETWEEN 5801 AND 7500 THEN "Pleno"
    WHEN AVG(j.max_salary + j.min_salary) BETWEEN 7501 AND 10500 THEN "Sênior"
    WHEN AVG(j.max_salary + j.min_salary) > 10500 THEN "CEO"
    END AS Nível
FROM hr.jobs j
GROUP BY Cargo
ORDER BY `Média salarial`, Cargo;
SELECT * FROM hr.jobs;
