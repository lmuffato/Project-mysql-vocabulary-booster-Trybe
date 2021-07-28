-- 3 - Exiba os cargos com a diferença entre seus salários máximo e mínimo;
-- 2 - Exiba os cargos com seu nível de renumeração associado, com base no salário máximo do cargo;
SELECT JOB_TITLE AS 'Cargo',
MAX_SALARY - MIN_SALARY AS `Diferença entre salários máximo e mínimo`
FROM hr.jobs
ORDER BY `Diferença entre salários máximo e mínimo`, JOB_TITLE;
