SELECT 
    JOB_TITLE AS 'Cargo',
    MAX_SALARY - MIN_SALARY AS 'Variação Salarial',
    ROUND((MIN_SALARY / 12), 2) AS 'Média Mínima Salarial',
    ROUND((MAX_SALARY / 12), 2) AS 'Média Máxima Salarial'
FROM
    hr.jobs
ORDER BY `Variação Salarial` , JOB_TITLE;
