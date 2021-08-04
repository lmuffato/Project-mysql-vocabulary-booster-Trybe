SELECT 
    UPPER(CONCAT(e.first_name, ' ', e.last_name)) AS `Nome completo`,
    h.start_date `AS Data de início do cargo`,
    e.salary AS `Salário`
FROM
    hr.job_history AS h
        INNER JOIN
    hr.employees AS e ON h.employee_id = e.employee_id
WHERE
    MONTH(h.start_date) IN (1 , 2, 3)
ORDER BY `Nome completo` ASC, `AS Data de início do cargo` ASC;
