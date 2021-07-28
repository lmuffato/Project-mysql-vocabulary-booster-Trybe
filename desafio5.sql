SELECT
  j.JOB_TITLE AS `Cargo`
  j.MAX_SALARY - j.MIN_SALARY AS `Variação Salarial`,
  j. AS `Média mínima mensal`
FROM hr.jobs AS j;