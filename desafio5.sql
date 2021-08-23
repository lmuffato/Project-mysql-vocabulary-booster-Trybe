SELECT
JOB_TITLE 'Cargo', -- OK
MAX_SALARY - MIN_SALARY 'Variação Salarial', -- OK
ROUND(MIN_SALARY / 12, 2) AS "Média mínima mensal",
ROUND(MAX_SALARY / 12, 2) AS "Média máxima mensal"
FROM hr.jobs
ORDER BY MAX_SALARY - MIN_SALARY, Cargo;
