SELECT 
Sub.name1 AS 'Nome completo funcionário 1',
Sub.salary1 AS 'Salário funcionário 1',
Sub.Tel1 AS 'Telefone funcionário 1',
Sub.name2 AS 'Nome completo funcionário 2',
Sub.salary2 AS 'Salário funcionário 2',
Sub.Tel2 AS 'Telefone funcionário 2'
FROM
(SELECT CONCAT(e1.FIRST_NAME, ' ', e1.LAST_NAME) AS 'name1',
CONCAT(e2.FIRST_NAME, ' ', e2.LAST_NAME) AS 'name2',
e1.SALARY AS 'salary1',
e2.SALARY AS 'salary2',
e1.PHONE_NUMBER AS 'Tel1',
e2.PHONE_NUMBER AS 'Tel2'
FROM hr.employees AS e1, hr.employees AS e2
WHERE e1.JOB_ID = e2.JOB_ID 
AND e1.EMPLOYEE_ID <> e2.EMPLOYEE_ID) AS Sub
ORDER BY 1, 4;