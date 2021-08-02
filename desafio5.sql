SELECT
    job_title Cargo,
    max_salary - min_salary 'Variação Salarial',
    ROUND(AVG(min_salary / 12), 2) 'Média mínima mensal',
    ROUND(AVG(max_salary / 12), 2) 'Média máxima mensal'
FROM
    hr.jobs
GROUP BY
    1
ORDER BY
    2, 1;
