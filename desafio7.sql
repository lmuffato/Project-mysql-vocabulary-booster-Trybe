SELECT UCASE(CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME)) AS 'Nome completo',
j.START_DATE AS 'Data de início',
e.SALARY AS Salário
FROM hr.job_history AS j
INNER JOIN hr.employees AS e
ON j.EMPLOYEE_ID = e.EMPLOYEE_ID
WHERE (MONTH(j.START_DATE) BETWEEN 1 AND 3)
ORDER BY CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME), j.START_DATE;
