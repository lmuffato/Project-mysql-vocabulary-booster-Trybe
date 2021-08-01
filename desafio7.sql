SELECT UCASE(CONCAT(t1.FIRST_NAME, ' ', t1.LAST_NAME)) AS `Nome completo`,
t2.START_DATE AS `Data de início`,
t1.SALARY AS `Salário`
FROM hr.employees AS t1
INNER JOIN hr.job_history AS t2 ON t1.EMPLOYEE_ID = t2.EMPLOYEE_ID
WHERE MONTH(t2.START_DATE) IN(1, 2, 3)
ORDER BY `Nome completo` ASC, `Data de início` ASC;
