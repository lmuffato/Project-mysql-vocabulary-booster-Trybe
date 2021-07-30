SELECT CONCAT(e.first_name, ' ', e.last_name) AS `Nome completo funcionário 1`, e.salary AS `Salário funcionário 1`, e.phone_number AS `Telefone funcionário 1`,
CONCAT(e2.first_name, ' ', e2.last_name) `Nome completo funcionário 2`, e2.salary AS `Salário funcionário 2`, e2.phone_number AS `Telefone funcionário 2`
FROM hr.employees AS e, hr.employees AS e2
WHERE e.job_id = e2.job_id AND e.employee_id <> e2.employee_id
ORDER BY `Nome completo funcionário 1`, `Nome completo funcionário 2`;
