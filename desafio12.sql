SELECT CONCAT(t1.first_name, ' ', t1.last_name) AS 'Nome completo funcionário 1', t1.salary AS 'Salário funcionário 1', t1.phone_number AS 'Telefone funcionário 1', CONCAT(t2.first_name, ' ', t2.last_name) AS 'Nome completo funcionário 2', t2.salary AS 'Salário funcionário 2', t2.phone_number AS 'Telefone funcionário 2' FROM hr.employees t1, hr.employees t2
WHERE t1.job_id = t2.job_id
GROUP BY `Nome completo funcionário 1`, `Nome completo funcionário 2`, `Salário funcionário 1`, `Salário funcionário 2`, `Telefone funcionário 1`, `Telefone funcionário 2`
HAVING `Nome completo funcionário 1` <> `Nome completo funcionário 2`
ORDER BY `Nome completo funcionário 1`, `Nome completo funcionário 2`;
