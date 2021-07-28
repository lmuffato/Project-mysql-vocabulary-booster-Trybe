SELECT * FROM hr.jobs;

SELECT JOB_TITLE AS 'Cargo',
(MAX_SALARY - MIN_SALARY) AS 'Variação Salarial',
(MIN_SALARY/12) AS 'Média mínima mensal',
(MAX_SALARY/12) AS 'Média máxima mensal'
FROM hr.jobs
ORDER BY `Variação Salarial`, Cargo;
