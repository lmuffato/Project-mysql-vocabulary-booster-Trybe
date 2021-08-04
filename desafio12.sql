SELECT 
    CONCAT(e1.first_name, ' ', e1.last_name) AS `Nome completo funcionário 1`,
    e1.salary AS `Salário funcionário 1`,
    e1.phone_number AS `Telefone funcionário 1`,
    CONCAT(e2.first_name, ' ', e2.last_name) AS `Nome completo funcionário 2`,
    e2.salary AS `Salário funcionário 2`,
    e2.phone_number AS `Telefone funcionário 2`
FROM
    hr.employees AS e1,
    hr.employees AS e2
WHERE
    e1.job_id = e2.job_id
        AND e1.employee_id <> e2.employee_id
ORDER BY `Nome completo funcionário 1` ASC , `Nome completo funcionário 2` ASC;
