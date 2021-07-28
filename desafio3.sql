SELECT
	j.JOB_TITLE AS `Cargo`,
    (j.MAX_SALARY - j.MIN_SALARY) AS `Diferença entre salários máximo e mínimo`
FROM
	jobs AS j
ORDER BY
	`Diferença entre salários máximo e mínimo` ASC,
    j.JOB_TITLE ASC;
