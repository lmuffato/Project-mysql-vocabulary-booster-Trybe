SELECT
	JOB_TITLE AS 'Cargo',
    MAX_SALARY - MIN_SALARY AS 'Variação Salarial',
	MIN_SALARY / 12 AS 'Média mínima mensal',
    MAX_SALARY / 12 AS 'Média máxima mensal'
FROM
	hr.employees AS em
INNER JOIN
	hr.jobs AS jo
ON
	em.JOB_ID = jo.JOB_ID
GROUP BY
	`Cargo`
ORDER BY
	`Variação Salarial` ASC,
    `Cargo` ASC;
