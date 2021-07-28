SELECT UCASE(CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME)) AS `Nome completo`, j.JOB_TITLE AS `Cargo`,
jh.START_DATE AS `Data de início`, e.SALARY AS `Salário`
FROM hr.job_history AS jh
INNER JOIN hr.employees AS e
ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
INNER JOIN hr.jobs AS j
ON j.JOB_ID = e.JOB_ID
INNER JOIN hr.departments AS d
ON jh.DEPARTMENT_ID = d.DEPARTMENT_ID
WHERE MONTH(jh.START_DATE) IN (1 , 2, 3) 
ORDER BY `Nome completo`, `Cargo`;

SELECT * FROM hr.job_history;