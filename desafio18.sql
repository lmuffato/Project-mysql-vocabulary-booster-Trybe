/* 18. Faça um relatório que mostra o histórico de cargos das pessoas
empregadas, mostrando as datas de início e de saída, assim como os anos
que ela ficou nesse cargo. */
SELECT
  CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) AS `Nome completo`,
  his.START_DATE AS `Data de início`,
  his.END_DATE AS `Data de rescisão`,
  -- job.JOB_TITLE AS `Titulo`,
  ROUND(DATEDIFF(his.END_DATE, his.START_DATE) / 365, 2)  AS `Anos trabalhados`
FROM
  hr.employees AS emp
INNER JOIN hr.job_history AS his
  ON emp.EMPLOYEE_ID = his.EMPLOYEE_ID
-- INNER JOIN hr.jobs AS job
--   ON his.JOB_ID = job.JOB_ID
ORDER BY
  `Nome completo`, `Anos trabalhados`;
