SELECT
	CONCAT(te.first_name, " ", te.last_name) AS `Nome completo`,
    CONCAT(
		DAY(tjh.start_date),
        "/", MONTH(tjh.start_date),
        "/", YEAR(tjh.start_date)
        )AS `Data de início do cargo`,
	CONCAT(
		DAY(tjh.end_date),
        "/", MONTH(tjh.end_date),
        "/", YEAR(tjh.end_date)
        )AS `Data de rescisão`,
	ROUND(DATEDIFF(tjh.end_date, tjh.start_date)/365, 2) AS `Anos trabalhados`
FROM hr.employees AS te
INNER JOIN hr.job_history AS tjh
ON te.employee_id = tjh.employee_id
ORDER BY 1, 4;
