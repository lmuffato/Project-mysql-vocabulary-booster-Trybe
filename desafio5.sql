SELECT 
JOB_TITLE AS 'Cargo',
(MAX_SALARY-MIN_SALARY) AS 'Variação Salarial',
round(MIN(MIN_SALARY/12), 2) AS 'Média mínima mensal',
round(MAX(MAX_SALARY/12), 2) AS 'Média maxima mensal'
FROM hr.jobs
ORDER BY (MAX_SALARY- MIN_SALARY) ASC, JOB_TITLE ASC;

