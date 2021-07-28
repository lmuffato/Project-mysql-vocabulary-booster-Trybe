SELECT 
    jo.JOB_TITLE AS 'Cargo',
    ROUND(jo.MAX_SALARY - jo.MIN_SALARY, 2) AS 'Variação Salarial',
    ROUND(jo.MIN_SALARY / 12, 2) AS 'Média mínima mensal',
    ROUND(jo.MAX_SALARY / 12, 2) AS 'Média máxima mensal'
FROM
    hr.employees AS em
        INNER JOIN
    hr.jobs AS jo ON em.JOB_ID = jo.JOB_ID
GROUP BY em.JOB_ID
ORDER BY `Variação Salarial` ASC , `Cargo` ASC
