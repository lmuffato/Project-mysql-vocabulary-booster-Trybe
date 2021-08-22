SELECT
    CONCAT(employee.first_name,
    ' ',
    employee.last_name) AS 'Nome completo',
    DATE_FORMAT(job.start_date,
    '%d/%m/%Y') AS 'Data de in�cio',
    DATE_FORMAT(job.end_date,
    '%d/%m/%Y') AS 'Data de rescis�o',
    ROUND(DATEDIFF(job.end_date,
    job.start_date)/365,
    2) AS 'Anos trabalhados' 
FROM
    hr.employees AS employee 
JOIN
    hr.job_history AS job 
        ON employee.employee_id = job.employee_id 
ORDER BY
    `Nome completo`,
    `Anos trabalhados`;
