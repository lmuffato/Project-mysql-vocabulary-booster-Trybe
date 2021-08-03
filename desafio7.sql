SELECT
    CONCAT(employees.FIRST_NAME,
    ' ',
    employees.LAST_NAME) AS 'Nome completo',
    job_history.START_DATE AS 'Data de início do cargo',
    employees.SALARY AS 'Salário' 
FROM
    hr.job_history as job_history 
INNER JOIN
    hr.employees AS employees          
        ON employees.EMPLOYEE_ID = job_history.EMPLOYEE_ID  
WHERE
    MONTH(job_history.START_DATE) IN (
        '1','2','3'
    ) 
ORDER BY
    CONCAT(employees.FIRST_NAME,
    ' ',
    employees.LAST_NAME),
    job_history.START_DATE;
