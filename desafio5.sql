USE hr;
SELECT j.JOB_TITLE AS 'Cargo', ROUND(j.MAX_SALARY - j.MIN_SALARY, 2) AS 'Variação Salarial', ROUND(j.MIN_SALARY/12, 2) AS 'Média mínima mensal', ROUND(j.MAX_SALARY/12, 2) AS 'Média máxima mensal'
FROM employees AS e
INNER JOIN jobs AS j
ON j.JOB_ID = e.JOB_ID
GROUP BY j.JOB_TITLE
ORDER BY `Variação Salarial` ASC, j.JOB_TITLE;
