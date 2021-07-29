SELECT 
    CONCAT(t1.first_name, ' ', t1.last_name) AS 'Nome completo funcionário 1',
    t1.salary AS 'Salário funcionário 1',
    t1.phone_number AS 'Telefone funcionário 1',
    CONCAT(t2.first_name, ' ', t2.last_name) AS 'Nome completo funcionário 2',
    t2.salary AS 'Salário funcionário 2',
    t2.phone_number AS 'Telefone funcionário 2'
FROM
    hr.employees AS t1,
    hr.employees AS t2
WHERE
    t1.job_id = t2.job_id
        AND CONCAT(t1.first_name, ' ', t1.last_name) != CONCAT(t2.first_name, ' ', t2.last_name) 
        AND t1.salary != t2.salary
        AND t1.phone_number != t2.phone_number ORDER BY `Nome completo funcionário 1`, `Nome completo funcionário 2`;
