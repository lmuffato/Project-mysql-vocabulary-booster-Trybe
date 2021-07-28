SELECT JOB_TITLE AS 'Cargo',
  ABS(MIN_SALARY - MAX_SALARY) AS  'Variação Salarial',
  ROUND((MIN_SALARY / 12), 2) AS 'Média mínima mensal',
  ROUND((MAX_SALARY / 12), 2) AS 'Média máxima mensal'
FROM jobs
ORDER BY `Variação Salarial`, `Cargo`;
