SELECT t1.job_title AS 'Cargo', ROUND(avg(t2.salary), 2) AS 'Média salarial',
CASE
WHEN avg(t2.salary) BETWEEN 2000 AND 5800 THEN 'Júnior'
WHEN avg(t2.salary) BETWEEN 5801 AND 7500 THEN 'Pleno'
WHEN avg(t2.salary) BETWEEN 7501 AND 10500 THEN 'Sênior'
ELSE 'CEO'
END AS 'Senioridade'
FROM hr.jobs AS t1
INNER JOIN hr.employees AS t2
ON t1.job_id = t2.job_id
GROUP BY t1.job_title;
