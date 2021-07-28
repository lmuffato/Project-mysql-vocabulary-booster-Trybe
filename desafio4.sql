SELECT a.JOB_TITLE AS Cargo,
ROUND(AVG(b.SALARY), 2) AS `Média salarial`,
CASE
WHEN ROUND(AVG(b.SALARY), 2) <= 5800 THEN 'Júnior'
WHEN ROUND(AVG(b.SALARY), 2)<= 7500 THEN 'Pleno'
WHEN ROUND(AVG(b.SALARY), 2)<= 10500 THEN 'Sênior'
ELSE 'CEO'
END AS 'Senioridade'
FROM hr.employees AS b
INNER JOIN hr.jobs AS a ON a.JOB_ID=b.JOB_ID
GROUP BY a.JOB_TITLE
ORDER BY `Média salarial`, Cargo;
