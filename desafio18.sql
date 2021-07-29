SELECT 
    CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) AS 'Nome completo',
    DATE_FORMAT(his.START_DATE, '%d/%m/%Y') AS 'Data de início',
    DATE_FORMAT(his.END_DATE, '%d/%m/%Y') AS 'Data de rescisão',
    ROUND(DATEDIFF(his.END_DATE, his.START_DATE) / 365,
            2) AS 'Anos trabalhados'
FROM
    hr.employees AS emp
        INNER JOIN
    job_history AS his ON emp.EMPLOYEE_ID = his.EMPLOYEE_ID
ORDER BY `Nome completo` , `Anos trabalhados`;
