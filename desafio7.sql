SELECT CONCAT(UPPER(e.FIRST_NAME), ' ', UPPER(e.LAST_NAME))  AS 'Nome completo',
  j_h.START_DATE AS 'Data de início',
  e.SALARY AS 'Salário'
FROM employees as e
INNER JOIN jobs as j
ON j.JOB_ID = e.JOB_ID
INNER JOIN job_history as j_h
ON e.EMPLOYEE_ID = j_h.EMPLOYEE_ID
WHERE MONTH(j_h.START_DATE) IN (1, 2, 3)
ORDER BY `Nome Completo`, `Data de início`;
