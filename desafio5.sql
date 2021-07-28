SELECT  
J.JOB_TITLE  AS `Cargo`,
J.MAX_SALARY - J.MIN_SALARY AS `Variação Salarial`,
ROUND(AVG(J.MIN_SALARY DIV 12), 2 ) AS `Média mínima mensal`,
ROUND(AVG(J.MAX_SALARY DIV 12), 2 ) AS `Média máxima mensal`
FROM hr.employees AS A
INNER JOIN hr.jobs AS J
ON A.JOB_ID = J.JOB_ID
GROUP BY `Cargo`
ORDER BY `Variação Salarial` ASC, `Cargo` ASC;
