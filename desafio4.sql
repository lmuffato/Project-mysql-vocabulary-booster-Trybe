SELECT
  j.job_title AS 'Cargo',
  ROUND(AVG(e.salary)) AS 'Média salarial',
  CASE
    WHEN AVG(e.salary) BETWEEN 2000
    and 5800 THEN 'Júnior'
    WHEN AVG(e.salary) BETWEEN 5001
    and 7500 THEN 'Pleno'
    WHEN AVG(e.salary) BETWEEN 7501
    and 10500 THEN 'Sênior'
    ELSE 'CEO'
  END AS 'Senioridade'
FROM
  hr.jobs AS J
  INNER JOIN hr.employees AS E ON J.job_id = E.job_id
GROUP BY
  `Cargo`
ORDER BY
  `Média salarial`,
  `Cargo`
