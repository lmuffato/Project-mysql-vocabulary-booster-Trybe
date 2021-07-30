SELECT
CONCAT(E1.first_name, ' ', E1.last_name) AS `Nome completo funcionário 1`,
E1.salary AS `Salário funcionário 1`,
E1.phone_number AS `Telefone funcionário 1`,
CONCAT(E2.first_name, ' ', E2.last_name) AS `Nome completo funcionário 2`,
E2.salary AS `Salário funcionário 2`,
E2.phone_number AS `Telefone funcionário 2`
FROM
  hr.employees AS E1,
  hr.employees AS E2
WHERE
  E1.JOB_ID = E2.JOB_ID
AND
  E1.EMPLOYEE_ID <> E2.EMPLOYEE_ID
ORDER BY `Nome completo funcionário 1`, `Nome completo funcionário 2`;
