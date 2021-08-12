SELECT UCASE(concat(employees.FIRST_NAME, ' ', employees.LAST_NAME)) AS 'Nome completo',
job_history.START_DATE AS 'Data de início do cargo',
employees.SALARY AS 'Salário'
FROM hr.employees AS employees
INNER JOIN hr.jobs AS jobs
INNER JOIN hr.job_history AS job_history
ON job_history.JOB_ID = jobs.JOB_ID
AND job_history.EMPLOYEE_ID = employees.EMPLOYEE_ID
ORDER BY `Nome completo`, `Data de início do cargo` ASC;
