SELECT job.job_title AS `Cargo`,
ROUND(AVG(employee.salary), 2) AS 'Média salarial', 
CASE
WHEN AVG(employee.salary) BETWEEN 2000 AND 5800 THEN 'Júnior'
WHEN AVG(employee.salary) BETWEEN 5801 AND 7500 THEN 'Pleno' 
WHEN AVG(employee.salary) BETWEEN 7501 AND 10500 THEN 'Sênior'
WHEN AVG(employee.salary) > 10500 THEN 'CEO'
END AS 'Senioridade'
FROM hr.jobs AS job
INNER JOIN hr.employees AS employee ON job.job_id = employee.job_id
GROUP BY Cargo
ORDER BY `Média salarial`, `Cargo`;
