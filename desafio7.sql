SELECT UPPER(CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME)) AS `Nome completo`,
h.START_DATE AS `Data de início`, e.SALARY AS Salário 
FROM hr.job_history as h
INNER JOIN hr.employees AS e ON h.EMPLOYEE_ID = e.EMPLOYEE_ID
WHERE MONTH(h.START_DATE) BETWEEN 1 AND 3
ORDER BY `Nome completo`, `Data de início`;
