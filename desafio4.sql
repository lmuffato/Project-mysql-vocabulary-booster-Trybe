SELECT 
  J.JOB_TITLE AS 'Cargo',
  ROUND(AVG(E.SALARY), 2) AS 'Média salarial',
  (CASE
    WHEN AVG(E.SALARY) <= 5800 THEN 'Júnior'
    WHEN AVG(E.SALARY) <= 7500 THEN 'Pleno'
    WHEN AVG(E.SALARY) <= 10500 THEN 'Sênior'
    ELSE 'CEO'
   END
  ) AS 'Senioridade'
FROM hr.jobs AS J
INNER JOIN hr.employees AS E
ON J.JOB_ID = E.JOB_ID
GROUP BY Cargo ORDER BY `Média Salarial`, Cargo;