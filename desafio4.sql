SELECT
  y.JOB_TITLE AS Cargo,
  ROUND(AVG(x.SALARY), 2) AS `Média salarial`,
  CASE
    WHEN ROUND(AVG(x.SALARY), 2) BETWEEN 2000
    AND 5800 THEN 'Júnior'
    WHEN ROUND(AVG(x.SALARY), 2) BETWEEN 5801
    AND 7500 THEN 'Pleno'
    WHEN ROUND(AVG(x.SALARY), 2) BETWEEN 7501
    AND 10500 THEN 'Sênior'
    WHEN ROUND(AVG(x.SALARY), 2) > 10500 THEN 'CEO'
  END AS Senioridade
FROM
  hr.employees AS x
  INNER JOIN hr.jobs AS y ON x.JOB_ID = y.JOB_ID
GROUP BY
    Cargo
ORDER BY
    `Média salarial`,
    Cargo;
   