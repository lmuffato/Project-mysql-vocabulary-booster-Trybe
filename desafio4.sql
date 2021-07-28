SELECT 
  JOB_ID AS Cargo,
  AVG(SALARY) AS 'Média salarial',
  CASE
    WHEN AVG(SALARY) <= 5800 THEN 'Júnior'
    WHEN AVG(SALARY) <= 7500 THEN 'Pleno'
    WHEN AVG(SALARY) <= 10500 THEN 'Sênior'
    WHEN AVG(SALARY) > 10500 THEN 'CEO'
    ELSE 'erro de leitura'
  END AS 'Senioridade'
FROM hr.employees
GROUP BY Cargo
ORDER BY AVG(SALARY) ASC, Cargo ASC;
