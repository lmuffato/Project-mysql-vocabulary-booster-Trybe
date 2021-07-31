SELECT
  CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo funcionário 1',
  e.SALARY AS 'Salário funcionário 1',
  e.PHONE_NUMBER AS 'Telefone funcionário 1',
  CONCAT(e2.FIRST_NAME, ' ', e2.LAST_NAME) AS 'Nome completo funcionário 2',
  e2.SALARY AS 'Salário funcionário 2',
  e2.PHONE_NUMBER AS 'Telefone funcionário 2'
FROM
  hr.employees AS e,
  hr.employees AS e2
WHERE
  e.JOB_ID = e2.JOB_ID
AND
  e.FIRST_NAME <> e2.FIRST_NAME
  ORDER BY 1, 4;
