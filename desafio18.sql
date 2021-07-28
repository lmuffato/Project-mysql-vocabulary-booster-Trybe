SELECT CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
CONCAT(DAY(jh.START_DATE), '/', MONTH(jh.START_DATE), '/', YEAR(jh.START_DATE)) AS 'Data de início',
CONCAT(DAY(jh.END_DATE), '/', MONTH(jh.END_DATE), '/', YEAR(jh.END_DATE)) AS 'Data de rescisão',
ROUND(DATEDIFF(END_DATE, START_DATE) / 365, 2) AS 'Anos trabalhados'
FROM job_history AS jh
INNER JOIN employees AS e
ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
ORDER BY `Nome completo`, `Anos trabalhados`;
