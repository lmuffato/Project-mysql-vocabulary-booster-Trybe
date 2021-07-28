SELECT 
    job.JOB_TITLE AS Cargo,
    ROUND(AVG(employ.SALARY), 2) AS 'Média salarial',
    CASE
        WHEN AVG(employ.SALARY) BETWEEN 2000 AND 5800 THEN 'Júnior'
        WHEN AVG(employ.SALARY) BETWEEN 5801 AND 7500 THEN 'Pleno'
        WHEN AVG(employ.SALARY) BETWEEN 7501 AND 10500 THEN 'Sênior'
        WHEN AVG(employ.SALARY) > 10500 THEN 'CEO'
    END AS 'Senioridade'
FROM
    hr.jobs AS job
        INNER JOIN
    hr.employees AS employ ON employ.JOB_ID = job.JOB_ID
GROUP BY `Cargo`
ORDER BY `Média salarial` ASC , `Cargo` ASC;
