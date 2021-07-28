SELECT
  CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) AS 'Nome completo',
  DATE_FORMAT(H.START_DATE, '%d/%m/%Y') AS 'Data de início',
  DATE_FORMAT(H.END_DATE, '%d/%m/%Y') AS 'Data de rescisão',
  ROUND(DATEDIFF(H.END_DATE, H.START_DATE) / 365, 2) AS 'Anos trabalhados'
FROM 
  hr.employees AS E
    INNER JOIN 
  hr.job_history AS H ON E.EMPLOYEE_ID = H.EMPLOYEE_ID
ORDER BY `Nome completo`, `Anos trabalhados`;
