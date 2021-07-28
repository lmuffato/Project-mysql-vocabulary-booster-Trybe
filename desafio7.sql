SELECT UPPER(CONCAT(e.first_name,' ', e.last_name)) as `Nome completo`, h.start_date AS `Data de início`, e.salary AS `Salário`
FROM hr.employees AS e
INNER JOIN hr.job_history as h
ON e.employee_id = h.employee_id
INNER JOIN hr.departments AS d
ON h.department_id = d.department_id
WHERE MONTH(h.start_date) IN (1,2,3)
ORDER BY `Nome completo`, `Data de início`;
