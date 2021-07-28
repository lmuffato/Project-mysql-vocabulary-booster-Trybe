-- 3 - Exiba os cargos com a diferença entre seus salários máximo e mínimo
SELECT JOB_TITLE Cargo, (MAX_SALARY - MIN_SALARY) 'Diferença entre salários máximo e mínimo' FROM hr.jobs
ORDER BY `Diferença entre salários máximo e mínimo`, Cargo;
