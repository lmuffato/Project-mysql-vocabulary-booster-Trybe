/* 7. Faça um relatório que mostra o histórico de cargos das pessoas empregadas
que iniciaram seus cargos nos meses de janeiro, fevereiro ou março. */
SELECT
  UCASE(CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME)) AS `Nome completo`,
  h.START_DATE AS `Data de início`,
  e.SALARY AS `Salário`
FROM
  hr.job_history AS h
INNER JOIN hr.employees AS e
  ON e.EMPLOYEE_ID = h.EMPLOYEE_ID
INNER JOIN hr.jobs AS j
  ON j.JOB_ID = h.JOB_ID
 WHERE MONTH(h.START_DATE) BETWEEN 1 AND 3
ORDER BY
  `Nome completo` ASC,
  `Data de início` ASC;
