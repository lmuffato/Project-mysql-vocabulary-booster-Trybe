SELECT JOB_TITLE AS "Cargo", (j.MAX_SALARY - j.MIN_SALARY) AS "Variação Salarial" , ROUND(MIN_SALARY/12, 2) AS "Média mínima mensal", 
ROUND(MAX_SALARY/12, 2) AS "Média máxima mensal" FROM jobs j
ORDER BY 2 ASC, 1 ASC;
