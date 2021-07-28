SELECT
ucase(concat(e.FIRST_NAME,' ',e.LAST_NAME)) AS 'Nome completo',
h.START_DATE AS 'Data de início',
e.SALARY AS 'Salário'
FROM hr.job_history as h
INNER JOIN hr.employees AS e
ON h.EMPLOYEE_ID = e.EMPLOYEE_ID
WHERE month(h.START_DATE) BETWEEN 01 AND 03
ORDER BY `Nome completo` ASC, h.START_DATE ASC;
