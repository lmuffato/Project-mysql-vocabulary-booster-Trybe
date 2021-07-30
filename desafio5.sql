SELECT
  j.JOB_TITLE AS `Cargo`,
  j.MAX_SALARY - j.MIN_SALARY AS `Variação Salarial`,
  ROUND(j.MIN_SALARY / 12, 2) AS `Média mínima mensal`,
  ROUND(j.MAX_SALARY / 12, 2) AS `Média máxima mensal`
FROM hr.jobs AS j
INNER JOIN hr.employees AS e
ON e.JOB_ID = j.JOB_ID
GROUP BY e.JOB_ID
ORDER BY `Variação Salarial`, `Cargo`;
