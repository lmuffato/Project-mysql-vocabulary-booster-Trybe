SELECT UCASE(CONCAT(e.FIRST_NAME,' ',e.LAST_NAME)) AS 'Nome Completo',
h.START_DATE AS 'Data de início',
e.SALARY AS 'Salário'
FROM hr.job_history AS h
INNER JOIN hr.employees AS e
ON h.EMPLOYEE_ID = e.EMPLOYEE_ID
WHERE month(h.START_DATE) IN (1, 2, 3)
ORDER BY `Nome completo` ASC, h.START_DATE ASC;
