SELECT CONCAT(E1.FIRST_NAME,' ',E1.LAST_NAME) AS 'Nome completo funcionário 1',
E1.Salary AS 'Salário funcionário 1', E1.PHONE_NUMBER AS 'Telefone funcionário 1',
CONCAT(E2.FIRST_NAME,' ',E2.LAST_NAME) AS 'Nome completo funcionário 2',
E2.Salary AS 'Salário funcionário 2', E2.PHONE_NUMBER AS 'Telefone funcionário 2'
FROM hr.employees E1, hr.employees E2
WHERE E1.JOB_ID = E2.JOB_ID AND CONCAT(E1.FIRST_NAME,' ',E1.LAST_NAME) != CONCAT(E2.FIRST_NAME,' ',E2.LAST_NAME)
GROUP BY CONCAT(E1.FIRST_NAME,' ',E1.LAST_NAME),CONCAT(E2.FIRST_NAME,' ',E2.LAST_NAME)
ORDER BY `Nome completo funcionário 1`, `Nome completo funcionário 2`;
