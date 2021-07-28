SELECT UPPER(CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME)) AS 'Nome Completo',
	h.START_DATE AS 'Data de início',
	emp.SALARY AS 'Salário'
FROM hr.employees AS emp, hr.job_history AS h
WHERE h.JOB_ID = emp.JOB_ID AND MONTH(h.START_DATE) IN (1, 2, 3)
ORDER BY CONCAT(FIRST_NAME, ' ', LAST_NAME), h.START_DATE;
