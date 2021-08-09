SELECT UCASE(CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME)) AS 'Nome completo',
jh.START_DATE AS 'Data de início',
e.SALARY AS 'Salário'
FROM hr.job_history AS jh
INNER JOIN hr.employees AS e
ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID AND MONTH(START_DATE) IN(1, 2, 3)
ORDER BY `Nome completo`, `Data de início`;
