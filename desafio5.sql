SELECT 
    job_title AS Cargo,
    (max_salary - min_salary) AS 'Variação Salarial',
    ROUND((AVG(min_salary)/12), 2) AS 'Média mínima mensal',
    ROUND((AVG(max_salary)/12), 2) As 'Média máxima mensal'
FROM hr.jobs
GROUP BY Cargo, `Variação Salarial`
ORDER BY `Variação Salarial` ASC, Cargo ASC;
