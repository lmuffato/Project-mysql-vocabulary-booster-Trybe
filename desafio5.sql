SELECT 
    JOB_TITLE AS 'Cargo',
    MAX_SALARY - MIN_SALARY AS 'Variação Salarial',
    ROUND((MIN_SALARY / 12), 2) AS 'Média ínima mensal',
    ROUND((MAX_SALARY / 12), 2) AS 'Média áxima mensal'
FROM
    hr.jobs
ORDER BY `Variação Salarial` , JOB_TITLE;
