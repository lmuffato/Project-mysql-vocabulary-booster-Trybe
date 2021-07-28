SELECT
  j.JOB_TITLE AS Cargo,
  (j.MAX_SALARY - j.MIN_SALARY) AS 'Diferença entre salários máximo e mínimo'
FROM hr.jobs AS j
ORDER BY `Diferença entre salários máximo e mínimo`, j.JOB_TITLE;
