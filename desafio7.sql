SELECT UCASE(CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME)) AS `Nome Completo`,
h.START_DATE AS `Data de início`,
e.SALARY AS Salário
FROM hr.job_history AS h
JOIN hr.employees AS e ON e.EMPLOYEE_ID=h.EMPLOYEE_ID
WHERE MONTH(h.START_DATE ) IN (1,2,3)
ORDER BY `Nome Completo`, `Data de início`;
