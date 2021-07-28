SELECT
CONCAT(te.first_name, " ", te.last_name) AS `Nome completo funcionário 1`,
te.salary AS `Salário funcionário 1`,
te.phone_number AS `Telefone funcionário 1`,
CONCAT(te2.first_name, " ", te2.last_name) AS `Nome completo funcionário 2`,
te2.salary AS `Salário funcionário 2`,
te2.phone_number AS `Telefone funcionário 2`
FROM hr.employees AS te,
hr.employees AS te2
WHERE te.job_id = te2.job_id 
ORDER BY 1, 4;
