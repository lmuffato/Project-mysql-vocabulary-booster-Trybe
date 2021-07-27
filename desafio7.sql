SELECT UCASE(CONCAT(FIRST_NAME, " ", LAST_NAME)) AS "Nome completo", 
`history`.START_DATE AS "Data de início",
employees.SALARY AS "Salário"
FROM hr.job_history AS `history`
INNER JOIN hr.employees AS employees ON employees.EMPLOYEE_ID = `history`.EMPLOYEE_ID
WHERE MONTH(`history`.START_DATE) IN (01, 02, 03)
ORDER BY "Nome completo" ASC, `history`.START_DATE;