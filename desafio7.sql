SELECT
UPPER(CONCAT(e.FIRST_NAME, " ", e.LAST_NAME))AS 'Nome completo',
h.START_DATE AS 'Data de início',
e.SALARY AS 'Salário'
FROM hr.employees AS e
INNER JOIN hr.job_history AS h
ON e.EMPLOYEE_ID = h.EMPLOYEE_ID
WHERE MONTH(h.START_DATE) BETWEEN '01' AND '03'
ORDER BY `Nome completo` ASC, `Data de início` ASC;
