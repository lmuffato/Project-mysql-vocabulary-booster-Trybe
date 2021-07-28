SELECT
  CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) AS 'Nome completo funcionário 1',
  E.SALARY AS 'Salário funcionário 1',
  E.PHONE_NUMBER AS 'Telefone funcionário 1',
  CONCAT(E2.FIRST_NAME, ' ', E2.LAST_NAME) AS 'Nome completo funcionário 2',
  E2.SALARY AS 'Salário funcionário 2',
  E2.PHONE_NUMBER AS 'Telefone funcionário 2'
FROM
  hr.employees AS E,
  hr.employees AS E2
WHERE
  E.JOB_ID = E2.JOB_ID
  AND E.EMPLOYEE_ID <> E2.EMPLOYEE_ID
ORDER BY
  `Nome completo funcionário 1`,
  `Nome completo funcionário 2`;
