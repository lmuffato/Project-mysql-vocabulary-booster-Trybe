SELECT 
UCASE(CONCAT(ce.first_name, " ", ce.last_name)) AS `Nome completo`,
cjh.start_date AS `Data de início`,
ce.salary AS `Salário`
FROM hr.employees AS ce
INNER JOIN hr.job_history AS cjh
ON ce.employee_id = cjh.employee_id
WHERE MONTH(cjh.start_date) IN (01, 02, 03)
ORDER BY 1, 2;
