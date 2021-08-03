SELECT 
  j.JOB_TITLE AS 'Cargo',
  j.MAX_SALARY - j.MIN_SALARY AS 'Variação Salarial',
  ROUND(j.MIN_SALARY / 12, 2) AS 'Média Mínima Mensal',
  ROUND(j.MIN_SALARY / 12, 2) AS 'Média Máxima Mensal'
FROM hr.jobs AS j
ORDER BY 2, 1;
