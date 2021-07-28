-- 4 - Exiba a média salarial e o nível de senioridade de todas as pessoas empregadas, agrupadas pelo cargo

SELECT j.JOB_TITLE AS 'Cargo',
  ROUND(AVG(e.SALARY), 2) AS 'Média salarial',
    CASE
      WHEN AVG(e.SALARY) BETWEEN 2000 AND 5800 THEN 'Júnior'
      WHEN AVG(e.SALARY) BETWEEN 5801 AND 7500 THEN 'Pleno'
      WHEN AVG(e.SALARY) BETWEEN 7501 AND 10500 THEN 'Sênior'
      WHEN AVG(e.SALARY) > 10500 THEN 'CEO'
    END AS 'Senioridade'
FROM hr.jobs AS j
INNER JOIN hr.employees AS e
  ON  e.JOB_ID = j.JOB_ID
GROUP BY `Cargo`
ORDER BY `Média salarial` ASC, `Cargo` ASC;


/* Obrigada Lucas, Perycles, Luan  */