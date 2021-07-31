SELECT UCASE(CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME)) AS `Nome completo`,
job_hist.START_DATE AS `Data de início`,
emp.SALARY AS `Salário`
FROM hr.job_history AS job_hist
INNER JOIN hr.employees AS emp ON job_hist.EMPLOYEE_ID = emp.EMPLOYEE_ID
WHERE MONTH(job_hist.START_DATE) BETWEEN 1 AND 3
ORDER BY `Nome completo` ASC, `Data de início` ASC;
