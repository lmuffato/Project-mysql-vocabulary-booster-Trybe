SELECT j.JOB_TITLE AS 'Cargo', (-j.MIN_SALARY + j.MAX_SALARY) AS "Variação Salarial", MIN(j.MIN_SALARY )/12 AS "Média mínima mensal", 
MAX(j.MAX_SALARY)/12 AS "Média máxima mensal" FROM jobs j
GROUP BY j.JOB_TITLE
ORDER BY 2 ASC, 1 ASC;
