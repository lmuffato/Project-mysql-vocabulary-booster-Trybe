SELECT
CONCAT(t1.FIRST_NAME, ' ', t1.LAST_NAME)  'Nome completo funcionário 1',
t1.SALARY  'Salário funcionário 1',
t1.PHONE_NUMBER  'Telefone funcionário 1',
CONCAT(t2.FIRST_NAME, ' ', t2.LAST_NAME)  'Nome completo funcionário 2',
t2.SALARY  'Salário funcionário 2',
t2.PHONE_NUMBER  'Telefone funcionário 2'
FROM hr.employees  t1
INNER JOIN hr.employees  t2 ON t1.JOB_ID = t2.JOB_ID
AND t1.EMPLOYEE_ID <> t2.EMPLOYEE_ID
ORDER BY `Nome completo funcionário 1`,`Nome completo funcionário 2`;
  