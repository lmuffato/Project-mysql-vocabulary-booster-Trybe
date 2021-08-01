SELECT
  CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
  DATE_FORMAT(jh.START_DATE, '%d/%m/%Y') AS 'Data de início',
  DATE_FORMAT(jh.END_DATE, '%d/%m/%Y') AS 'Data de rescisão',
  ROUND(DATEDIFF(jh.END_DATE, jh.START_DATE) / 365, 2) AS 'Anos trabalhados'
FROM hr.job_history AS jh
LEFT JOIN hr.employees AS e
ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
WHERE jh.EMPLOYEE_ID <> 0
ORDER BY `Nome completo`, `Anos trabalhados`;
