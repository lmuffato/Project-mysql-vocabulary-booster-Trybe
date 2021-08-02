SELECT
    job_title Cargo,
    max_salary - min_salary 'Diferença entre salários máximo e mínimo'
FROM
    hr.jobs
ORDER BY
    2, 1;
