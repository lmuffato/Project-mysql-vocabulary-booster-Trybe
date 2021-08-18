/* 20. Toda pessoa funcionária no banco hr possui um histórico completo de cargos.
Logo, crie uma procedure chamada exibir_historico_completo_por_funcionario
que, dado o e-mail de uma pessoa funcionária, retorna todos os cargos em
seu histórico. */
select * from hr.employees;

SELECT
  CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) AS `Nome completo`,
  his.START_DATE AS `Data de início`,
  his.END_DATE AS `Data de rescisão`,
  job.JOB_TITLE AS `Titulo`,
  ROUND(DATEDIFF(his.END_DATE, his.START_DATE) / 365, 2)  AS `Anos trabalhados`
FROM
  hr.employees AS emp
INNER JOIN hr.job_history AS his
  ON emp.EMPLOYEE_ID = his.EMPLOYEE_ID
INNER JOIN hr.jobs AS job
  ON his.JOB_ID = job.JOB_ID
WHERE
  emp.EMAIL = "NKOCHHAR"
ORDER BY
  `Nome completo`, `Anos trabalhados`;
