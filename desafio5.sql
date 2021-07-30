SELECT j.JOB_TITLE AS 'Cargo', (-j.MIN_SALARY + j.MAX_SALARY) AS "Variação Salarial", ROUND(MIN(j.MIN_SALARY )/12,2) AS "Média mínima mensal", 
ROUND(MAX(j.MAX_SALARY)/12, 2) AS "Média máxima mensal" FROM jobs j
GROUP BY j.JOB_TITLE
ORDER BY 2 ASC, 1 ASC;
