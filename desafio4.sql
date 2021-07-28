SELECT cj.job_title AS `Cargo`,
ROUND(AVG(ce.salary), 2) AS `Média salarial`,
CASE
WHEN ROUND(AVG(ce.salary), 2) BETWEEN 2000 AND 5800 THEN 'Júnior'
WHEN ROUND(AVG(ce.salary), 2) BETWEEN 5801 AND 7500 THEN 'Pleno'
WHEN ROUND(AVG(ce.salary), 2) BETWEEN 7501 AND 10500 THEN 'Sênior'
WHEN ROUND(AVG(ce.salary), 2) > 10500 THEN 'CEO'
END AS `Senioridade`
FROM hr.jobs AS cj
INNER JOIN hr.employees AS ce
ON cj.job_id = ce.job_id
GROUP BY ce.job_id
ORDER BY `Média Salarial` ASC, cj.job_title ASC;
