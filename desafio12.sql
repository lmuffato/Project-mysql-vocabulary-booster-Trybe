SELECT CONCAT(employees1.FIRST_NAME, ' ', employees1.LAST_NAME) AS 'Nome completo funcionário 1',
employees1.SALARY AS 'Salário funcionário 1',
employees1.PHONE_NUMBER AS 'Telefone funcionário 1',
CONCAT(employees2.FIRST_NAME, ' ', employees2.LAST_NAME) AS 'Nome completo funcionário 2',
employees2.SALARY AS 'Salário funcionário 2',
employees2.PHONE_NUMBER AS 'Telefone funcionário 2'
FROM hr.employees AS employees1, hr.employees AS employees2
WHERE (employees1.JOB_ID = employees2.JOB_ID) AND NOT (CONCAT(employees1.FIRST_NAME, ' ', employees1.LAST_NAME) = CONCAT(employees2.FIRST_NAME, ' ', employees2.LAST_NAME))
ORDER BY CONCAT(employees1.FIRST_NAME, ' ', employees1.LAST_NAME), CONCAT(employees2.FIRST_NAME, ' ', employees2.LAST_NAME);
