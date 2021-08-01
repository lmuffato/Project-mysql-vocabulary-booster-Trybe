SELECT
  Cargo,
  `Média salarial`,
  CASE
    WHEN `Média salarial` BETWEEN 2000
    AND 5800 THEN 'Júnior'
    WHEN `Média salarial` BETWEEN 5801
    AND 7500 THEN 'Pleno'
    WHEN `Média salarial` BETWEEN 7501
    AND 10500 THEN 'Sênior'
    ELSE 'CEO'
  END AS 'Senioridade'
FROM
  (
    SELECT
      j.JOB_TITLE AS 'Cargo',
      ROUND(AVG(e.SALARY), 2) AS `Média salarial`
    FROM
      hr.employees e
      INNER JOIN hr.jobs j ON e.JOB_ID = j.JOB_ID
    GROUP BY
      j.JOB_ID
  ) AS position_details
ORDER BY `Média salarial`, Cargo;
