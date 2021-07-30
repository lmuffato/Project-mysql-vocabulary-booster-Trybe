SELECT UCASE(CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME)) AS 'Nome completo', jh.START_DATE AS 'Data de início', e.SALARY AS 'Salário'
FROM hr.employees AS e
INNER JOIN hr.job_history AS jh
ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
INNER JOIN hr.jobs AS j 
ON j.JOB_ID = jh.JOB_ID
INNER JOIN hr.departments AS d 
ON d.DEPARTMENT_ID = e.DEPARTMENT_ID
WHERE MONTH(jh.START_DATE) IN(1, 2, 3)
ORDER BY `Nome completo` ASC, `Data de início` ASC;
