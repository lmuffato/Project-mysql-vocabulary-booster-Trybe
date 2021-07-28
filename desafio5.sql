SELECT
	jo.JOB_TITLE AS 'Cargo',
    jo.MAX_SALARY - jo.MIN_SALARY AS 'Variação Salarial',
	jo.MIN_SALARY / 12 AS 'Média mínima mensal',
    jo.MAX_SALARY / 12 AS 'Média máxima mensal'
FROM
	hr.employees AS em
INNER JOIN
	hr.jobs AS jo
ON
	em.JOB_ID = jo.JOB_ID
GROUP BY
	em.JOB_ID
ORDER BY
	`Variação Salarial` ASC,
    `Cargo` ASC;
