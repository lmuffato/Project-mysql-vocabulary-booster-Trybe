SELECT concat(e.FIRST_NAME, ' ', e.LAST_NAME) `Nome completo`,
jh.START_DATE AS `Data de início`,
jh.END_DATE AS `Data de rescisão`,
ROUND(DATEDIFF(jh.END_DATE, jh.START_DATE)/365, 2) AS `Anos trabalhados`
FROM hr.job_history AS jh
INNER JOIN hr.employees AS e
ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
ORDER BY `Nome completo`, `Anos trabalhados`;
