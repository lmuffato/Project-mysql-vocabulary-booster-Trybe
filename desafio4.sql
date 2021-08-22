SELECT j.job_title AS 'Cargo', CONVERT(AVG(e.salary), DECIMAL(10,2)) AS 'Média salarial',
CASE
WHEN CONVERT(AVG(e.salary), DECIMAL(10,2)) BETWEEN 2000 AND 5800 THEN 'Júnior'
WHEN CONVERT(AVG(e.salary), DECIMAL(10,2)) BETWEEN 5801 AND 7500 THEN 'Pleno'
WHEN CONVERT(AVG(e.salary), DECIMAL(10,2)) BETWEEN 7501 AND 10500 THEN 'Sênior'
WHEN CONVERT(AVG(e.salary), DECIMAL(10,2)) > 10500 THEN 'CEO'
END AS 'Senioridade'
FROM employees AS e
INNER JOIN jobs AS j
ON e.job_id = j.job_id
GROUP BY j.job_title
ORDER BY CONVERT(AVG(e.salary), DECIMAL(10,2)), j.job_title;
