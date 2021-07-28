SELECT 
    UCASE(CONCAT(em.first_name, ' ', em.last_name)) AS 'Nome completo',
    jobHistory.start_date AS 'Data de início',
    em.salary AS 'Salário'
FROM
    hr.job_history AS jobHistory
        INNER JOIN
    hr.employees AS em ON em.employee_id = jobHistory.employee_id
WHERE
    MONTH(jobHistory.start_date) IN (1 , 2, 3)
    ORDER BY `Nome completo`, `Data de início`;
