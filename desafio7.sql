SELECT UCASE(CONCAT(e.first_name, ' ', e.last_name)) AS `Nome completo`,
jh.start_date AS `Data de início`,
e.salary AS `Salário`
FROM hr.job_history AS jh
JOIN hr.employees AS e
ON e.employee_id = jh.employee_id
WHERE MONTH(jh.start_date) BETWEEN 1 AND 3
ORDER BY `Nome completo`, `Data de início`;
