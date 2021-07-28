SELECT CONCAT(e1.first_name, ' ', e1.last_name) AS 'Nome completo funcionário 1',
e1.salary AS 'Salário funcionário 1',
e1.phone_number AS 'Telefone funcionário 1',
CONCAT(e2.first_name, ' ', e2.last_name) AS 'Nome completo funcionário 2',
e2.salary AS 'Salário funcionário 2',
e2.phone_number AS 'Telefone funcionário 2'
FROM hr.employees AS e1,
hr.employees AS e2
WHERE e2.EMPLOYEE_ID <> e1.EMPLOYEE_ID AND e1.JOB_ID = e2.JOB_ID
ORDER BY CONCAT(e1.FIRST_NAME, ' ', e1.LAST_NAME), CONCAT(e2.FIRST_NAME, ' ', e2.LAST_NAME);
