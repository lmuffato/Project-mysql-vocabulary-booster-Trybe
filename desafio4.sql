SELECT
(
SELECT job_title
FROM hr.jobs
WHERE jobs.job_id = hr.employees.job_id
) AS "Cargo",
ROUND(AVG(salary), 2) AS "Média salarial",
CASE
WHEN ROUND(AVG(SALARY), 2) BETWEEN 2000.00 AND 5800.00 THEN 'Júnior'
WHEN ROUND(AVG(SALARY), 2) BETWEEN 5801.00 AND 7500.00 THEN 'Pleno'
WHEN ROUND(AVG(SALARY), 2) BETWEEN 7501.00 AND 10500.00 THEN 'Sênior'
WHEN ROUND(AVG(salary), 2) > 10500.00 THEN "CEO"
END AS "Senioridade"
FROM hr.employees GROUP BY job_id ORDER BY `Média salarial`, Cargo;
