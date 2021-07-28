SELECT JOB_TITLE AS 'Cargo', ABS(MIN_SALARY - MAX_SALARY) AS 'Diferença entre salários máximo e mínimo'
FROM jobs
ORDER BY `Diferença entre salários máximo e mínimo`, `Cargo`;