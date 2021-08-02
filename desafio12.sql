SELECT CONCAT(e1.FIRST_NAME,' ', e1.LAST_NAME) AS 'Nome completo funcionário 1' , 
e1.SALARY AS 'Salário funcionário 1',
e1.PHONE_NUMBER AS 'Telefone funcionário 1',
CONCAT(e2.FIRST_NAME,' ',e2.LAST_NAME) AS 'Nome completo funcionário 2',
e2.SALARY AS 'Salário funcionário 2',
e2.PHONE_NUMBER AS 'Telefone funcionário 2'
FROM hr.employees AS e1, hr.employees AS e2
WHERE e1.JOB_ID=e2.JOB_ID
AND e1.EMPLOYEE_ID <> e2.EMPLOYEE_ID
ORDER BY CONCAT(e1.FIRST_NAME,' ', e1.LAST_NAME), CONCAT(e2.FIRST_NAME,' ',e2.LAST_NAME);


-- Error Code: 1064. You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'FROM hr.employees AS e1, hr.employees AS e2' at line 9
