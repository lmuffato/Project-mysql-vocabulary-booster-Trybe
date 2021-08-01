SELECT
    j.job_title Cargo,
CASE
    WHEN salary BETWEEN 5000 AND 10000 THEN 'Baixo'
    WHEN salary BETWEEN 10001 AND 20000 THEN 'Médio'
    WHEN salary BETWEEN 20001 AND 30000 THEN 'Alto'
    WHEN salary > 30000 THEN 'Altíssimo'
    ELSE 'Baixo'
END 
    Nível
FROM
    hr.jobs j
INNER JOIN
    hr.employees e
USING
    (job_id)
GROUP BY
    1
ORDER BY
    1;
