SELECT CONCAT(UCASE(first_name), ' ', UCASE(last_name)) AS 'Nome completo', `start_date` AS 'Data de início', salary AS Salário FROM hr.employees e
INNER JOIN hr.job_history j_h
ON j_h.employee_id = e.employee_id
WHERE MONTH(`start_date`) BETWEEN '01' AND '03'
ORDER BY `Nome completo`, `Data de início`;
