SELECT t1.JOB_TITLE AS Cargo,
ROUND(AVG(t2.SALARY), 2) AS `Média salarial`,
CASE
WHEN ROUND(AVG(t2.SALARY), 2) <= 5800 THEN 'Júnior'
WHEN ROUND(AVG(t2.SALARY), 2)<= 7500 THEN 'Pleno'
WHEN ROUND(AVG(t2.SALARY), 2)<= 10500 THEN 'Sênior'
ELSE 'CEO'
END AS 'Senioridade'
FROM hr.employees AS t2
INNER JOIN hr.jobs AS t1 ON t1.JOB_ID=t2.JOB_ID
GROUP BY t1.JOB_TITLE
ORDER BY `Média salarial`, Cargo;
