SELECT 
  (SELECT JOB_TITLE FROM hr.jobs AS J
    WHERE E.JOB_ID = J.JOB_ID) AS Cargo,
  ROUND(AVG(SALARY), 2) AS 'Média salarial',
  CASE
    WHEN AVG(SALARY) <= 5800 THEN 'Júnior'
    WHEN AVG(SALARY) <= 7500 THEN 'Pleno'
    WHEN AVG(SALARY) <= 10500 THEN 'Sênior'
    WHEN AVG(SALARY) > 10500 THEN 'CEO'
    ELSE 'erro de leitura'
  END AS 'Senioridade'
FROM hr.employees AS E
GROUP BY Cargo
ORDER BY AVG(SALARY) ASC, Cargo ASC;
