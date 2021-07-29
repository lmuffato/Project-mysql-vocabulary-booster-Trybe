SELECT
  j.JOB_TITLE AS `Cargo`,
  round(avg(e.SALARY), 2) AS `Média salarial`,
  CASE
    WHEN round(avg(e.SALARY), -2) >= 2000
    AND round(avg(e.SALARY), -2) <= 5800 THEN 'Júnior'
    WHEN round(avg(e.SALARY), -2) >= 5801
    AND round(avg(e.SALARY), -2) <= 7500 THEN 'Pleno'
    WHEN round(avg(e.SALARY), -2) >= 7501
    AND round(avg(e.SALARY), -2) <= 10500 THEN 'Sênior'
    ELSE 'CEO'
  END AS `Senioridade`
FROM
  hr.employees AS e
  INNER JOIN hr.jobs AS j ON e.JOB_ID = j.JOB_ID
GROUP by
  e.JOB_ID
ORDER BY
  round(avg(e.SALARY), -2),
  j.JOB_TITLE;
