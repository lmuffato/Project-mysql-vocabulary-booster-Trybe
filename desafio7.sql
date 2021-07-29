SELECT 
  UPPER(CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME)) AS 'Nome completo',
  jh.START_DATE AS 'Data de início',
  e.SALARY AS 'Salário'
FROM 
  job_history AS jh
INNER JOIN
  employees e ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
WHERE
    month(jh.START_DATE) >= 1 AND month(jh.START_DATE) <= 3
ORDER BY
  `Nome completo`, `Data de início`;
