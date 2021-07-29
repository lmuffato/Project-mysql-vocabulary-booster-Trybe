SELECT j.JOB_TITLE AS 'Cargo', ROUND(j.MAX_SALARY - j.MIN_SALARY) AS 'Variação Salarial', ROUND(j.MIN_SALARY/12, 2) AS 'Média mínima mensal', ROUND(j.MAX_SALARY/12, 2) AS 'Média máxima mensal'
FROM hr.jobs AS j
ORDER BY `Variação Salarial` ASC, j.JOB_TITLE;
