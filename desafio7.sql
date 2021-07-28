SELECT
  UCASE(CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME)) AS 'Nome completo',
  JH.START_DATE AS 'Data de início',
  E.SALARY AS 'Salário'
FROM
  hr.job_history AS JH
  INNER JOIN hr.employees AS E ON E.EMPLOYEE_ID = JH.EMPLOYEE_ID
WHERE
  MONTH(JH.START_DATE) IN (01, 02, 03)
ORDER BY
  `Nome completo`,
  `Data de início`;
