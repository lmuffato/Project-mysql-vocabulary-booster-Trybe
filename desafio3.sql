SELECT
JOB_TITLE AS 'Cargos',
MAX_SALARY - MIN_SALARY AS 'Diferença entre salários máximo e mínimo'
FROM hr.jobs
ORDER BY (MAX_SALARY - MIN_SALARY) ASC, JOB_TITLE ASC;
