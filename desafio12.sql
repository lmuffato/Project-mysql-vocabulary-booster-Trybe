SELECT
  CONCAT(t1.FIRST_NAME, ' ', t1.LAST_NAME) AS 'Nome completo funcionário 1',
  t1.salary AS 'Salário funcionário 1',
  t1.phone_number AS 'Telefone funcionário 1',
  CONCAT(t2.FIRST_NAME, ' ', t2.LAST_NAME) AS 'Nome completo funcionário 2',
  t2.salary AS 'Salário funcionário 2',
  t2.phone_number AS 'Telefone funcionário 2'
FROM
  hr.employees t1, hr.employees t2
WHERE
  t1.EMPLOYEE_ID <> t2.EMPLOYEE_ID
    AND t1.JOB_ID = t2.JOB_ID
ORDER BY 1, 4;
