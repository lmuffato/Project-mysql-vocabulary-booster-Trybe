SELECT
	CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS `Nome completo`,
    DATE_FORMAT(jk.START_DATE, '%d/%m/%Y') AS `Data de início`,
    DATE_FORMAT(jk.END_DATE, '%d/%m/%Y') AS `Data de rescisão`,
    ROUND(DATEDIFF(jk.END_DATE, jk.START_DATE) / 365, 2) AS `Anos trabalhados`
FROM
    employees AS e
JOIN
	job_history as jk
ON
	e.EMPLOYEE_ID = jk.EMPLOYEE_ID
ORDER BY
	`Nome completo` ASC,
    `Anos trabalhados` ASC;
