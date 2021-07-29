SELECT (SELECT concat(UCASE(first_name), ' ', UCASE(last_name))FROM hr.employees
WHERE employee_id = F.employee_id) AS 'Nome completo',
F.start_date AS 'Data de início',
(SELECT salary FROM hr.employees
WHERE employee_id= F.employee_id) AS Salário
FROM (SELECT employee_id, start_date FROM hr.job_history
WHERE month(start_date) IN(01, 02, 03)) AS F
ORDER BY 1, 2;
