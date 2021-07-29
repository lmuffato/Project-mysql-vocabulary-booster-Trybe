SELECT CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome Completo',
s.START_DATE AS 'Data de início',
e.SALARY AS 'Salário'
FROM hr.employees AS e
INNER JOIN hr.job_history AS s
ON e.EMPLOYEE_ID = s.EMPLOYEE_ID
ORDER BY `Nome completo`, `Data de início`;
