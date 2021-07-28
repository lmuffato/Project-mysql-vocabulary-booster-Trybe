SELECT
	upper(concat(FIRST_NAME, ' ', LAST_NAME)) AS 'Nome completo',
    START_DATE AS 'Data de início',
    SALARY AS 'Salário'
FROM
	hr.job_history AS jh
INNER JOIN
	hr.employees AS em
ON
	jh.EMPLOYEE_ID = em.EMPLOYEE_ID
ORDER BY
	`Nome completo` ASC,
    `Data de início` ASC;
