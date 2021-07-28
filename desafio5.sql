SELECT 
  (SELECT JOB_TITLE FROM hr.jobs AS J
    WHERE E.JOB_ID = J.JOB_ID) AS Cargo,
  MAX(SALARY) - MIN(SALARY) AS 'Variação Salarial',
  ROUND(MIN(SALARY)/12, 2) AS 'Média mínima mensal',
  ROUND(MAX(SALARY)/12, 2) AS 'Média máxima mensal'
FROM hr.employees AS E
GROUP BY Cargo
ORDER BY MAX(SALARY) - MIN(SALARY) ASC, Cargo ASC
