SELECT
  UCASE(CONCAT(E.FIRST_NAME, ' ', LAST_NAME)) AS 'Nome completo',
  H.START_DATE AS 'Data de início',
  E.SALARY AS 'Salário'
FROM hr.job_history AS H
INNER JOIN hr.employees AS E
ON H.EMPLOYEE_ID = E.EMPLOYEE_ID
WHERE MONTH(H.START_DATE) IN (1, 2, 3)
ORDER BY `Nome completo`, H.START_DATE;
