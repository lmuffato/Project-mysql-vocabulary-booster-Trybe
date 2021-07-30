SELECT j.JOB_TITLE AS Cargo, (-j.MIN_SALARY + j.MAX_SALARY) AS 'Diferença entre salários máximo e mínimo' FROM jobs j
ORDER BY 2 ASC, Cargo ASC;
