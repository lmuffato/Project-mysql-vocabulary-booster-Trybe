SELECT UCASE(CONCAT_WS( " ", employees.FIRST_NAME, employees.LAST_NAME)) AS "Nome completo", 
`history`.START_DATE AS "Data de início",
employees.SALARY AS "Salário"
FROM hr.job_history AS `history`
INNER JOIN hr.employees AS employees ON employees.EMPLOYEE_ID = `history`.EMPLOYEE_ID
WHERE MONTH(`history`.START_DATE) IN (1, 2, 3)
ORDER BY CONCAT_WS( " ",employees.FIRST_NAME, employees.LAST_NAME), `history`.START_DATE;
