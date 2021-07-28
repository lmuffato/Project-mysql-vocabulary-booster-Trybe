SELECT CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
jh.START_DATE AS 'Data de início',
jh.END_DATE AS 'Data de rescisão',
ROUND(DATEDIFF(jh.END_DATE, jh.START_DATE)/365, 2) AS 'Anos trabalhados'
FROM hr.employees AS e
RIGHT JOIN hr.job_history AS jh
ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
WHERE jh.END_DATE IS NOT FALSE
ORDER BY `Nome completo`, `Anos trabalhados`;
