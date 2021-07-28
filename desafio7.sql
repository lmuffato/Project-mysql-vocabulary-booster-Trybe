SELECT 
  UCASE(CONCAT(e.first_name, ' ', e.last_name)) AS 'Nome completo',
  jh.start_date AS 'Data de início',
  e.salary AS 'Salário'
 
FROM employees AS e
INNER JOIN job_history AS jh 
ON jh.employee_id = e.employee_id 
WHERE MONTH(jh.start_date) IN (01, 02, 03)
ORDER BY CONCAT(e.first_name, ' ', e.last_name) ASC, jh.start_date ASC;