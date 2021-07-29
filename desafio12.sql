SELECT CONCAT(employees.FIRST_NAME, ' ', employees.LAST_NAME) AS 'Nome completo funcionário 1', employees.SALARY AS 'Salário funcionário 1', employees.PHONE_NUMBER AS 'Telefone funcionário 1',
CONCAT(employees2.FIRST_NAME, ' ', employees2.LAST_NAME) AS 'Nome completo funcionário 2', employees2.SALARY AS 'Salário funcionário 2', employees2.PHONE_NUMBER AS 'Telefone funcionário 2'
FROM hr.employees AS employees, hr.employees AS employees2
WHERE employees.JOB_ID = employees2.JOB_ID
AND (employees.FIRST_NAME <> employees2.FIRST_NAME OR employees.LAST_NAME <> employees2.LAST_NAME)
ORDER BY `Nome completo funcionário 1` ASC, `Nome completo funcionário 2` ASC;
