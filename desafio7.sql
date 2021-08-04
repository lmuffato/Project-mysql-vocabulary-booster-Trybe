SELECT 
    UPPER(CONCAT(e.first_name, ' ', e.last_name)) AS `Nome completo`,
    h.start_date `Data de início`,
    e.salary AS `Salário`
FROM
    hr.job_history AS h
        INNER JOIN
    hr.employees AS e ON h.employee_id = e.employee_id
WHERE
    MONTH(h.start_date) IN (1 , 2, 3)
ORDER BY `Nome completo` ASC, `Data de início` ASC;
