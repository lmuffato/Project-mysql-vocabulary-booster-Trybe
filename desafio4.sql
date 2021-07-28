-- 4. Exiba a média salarial e o nível de senioridade de todas as pessoas empregadas, agrupadas pelo cargo
SELECT j.job_title
AS 'Cargo',
ROUND(AVG(e.salary), 2)
AS 'Média salarial',
CASE
WHEN ROUND(AVG(e.salary), 2)>=2000 AND ROUND(AVG(e.salary), 2)<=5800 THEN 'Júnior'
WHEN ROUND(AVG(e.salary), 2)>=5801 AND ROUND(AVG(e.salary), 2)<=7500 THEN 'Pleno'
WHEN ROUND(AVG(e.salary), 2)>=7501 AND ROUND(AVG(e.salary), 2)<=10500 THEN 'Sênior'
WHEN ROUND(AVG(e.salary), 2)>10500 THEN 'CEO'
END AS 'Senioridade'
FROM hr.jobs
AS j
INNER JOIN hr.employees
AS e
ON e.job_id = j.job_id
GROUP BY e.job_id
ORDER BY ROUND(AVG(e.salary), 2) ASC, j.job_title ASC;
