SELECT JOB_TITLE AS Cargo, 
(MAX_SALARY - MIN_SALARY) AS `Variação Salarial`,
ROUND(AVG(MIN_SALARY DIV 12), 2) AS `Média Mínima Mensal`,
ROUND(AVG(MAX_SALARY DIV 12), 2) AS `Média Máxima Mensal`
FROM hr.jobs
GROUP BY Cargo, `Variação Salarial`
ORDER BY `Variação Salarial` ASC, Cargo ASC;

