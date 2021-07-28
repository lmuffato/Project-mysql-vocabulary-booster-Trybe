SELECT UCASE(CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME)) AS `Nome completo`,
jh.START_DATE AS `Data de início`, e.SALARY AS `Salário`
FROM hr.job_history AS jh
INNER JOIN hr.employees AS e
ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
INNER JOIN hr.jobs AS j
ON jh.JOB_ID = j.JOB_ID
WHERE MONTH(jh.START_DATE) IN (1 , 2, 3) 
ORDER BY `Nome completo`;
