
SELECT
CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo funcionário 1',
e.SALARY AS 'Salário funcionário 1',
e.PHONE_NUMBER AS 'Telefone funcionário 1',
CONCAT(ne.FIRST_NAME, ' ', ne.LAST_NAME) AS 'Nome completo funcionário 2',
ne.SALARY AS 'Salário funcionário 2',
ne.PHONE_NUMBER AS 'Telefone funcionário 2'
FROM hr.employees AS e
INNER JOIN hr.employees AS ne ON e.JOB_ID = ne.JOB_ID AND e.EMPLOYEE_ID != ne.EMPLOYEE_ID
ORDER BY 1, 4;
