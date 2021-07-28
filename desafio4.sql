SELECT j.job_title AS 'Cargo',ROUND(AVG(e.salary), 2) AS 'Média salarial',
CASE
  WHEN AVG(e.salary) BETWEEN 2000 AND 5800 THEN 'Júnior'
  WHEN AVG(e.salary) BETWEEN 5801 AND 7500 THEN 'Pleno'
  WHEN AVG(e.salary) BETWEEN 7501 AND 10500 THEN 'Sênior'
  WHEN AVG(e.salary) > 10500 THEN 'CEO'
END AS 'Senioridade'
FROM hr.jobs AS j
INNER JOIN hr.employees AS e ON j.job_id = e.job_id
GROUP BY Cargo
ORDER BY `Média salarial` ASC, Cargo ASC;
