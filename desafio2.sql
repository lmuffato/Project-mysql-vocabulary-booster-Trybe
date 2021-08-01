SELECT
    j.job_title Cargo,
CASE
    WHEN salary BETWEEN 4999 AND 10000 THEN 'Baixo'
    WHEN salary BETWEEN 10001 AND 20000 THEN 'Médio'
    WHEN salary BETWEEN 20001 AND 30000 THEN 'Alto'
    ELSE 'Altíssimo'
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
