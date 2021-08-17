/* 6 - Faça um relatório que mostra o histórico de cargos das pessoas empregadas. */
SELECT
  CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS `Nome completo`,
  j.JOB_TITLE AS `Cargo`,
  h.START_DATE AS `Data de início do cargo`,
  d.DEPARTMENT_NAME AS `Departamento`
FROM
  hr.employees AS e
INNER JOIN hr.jobs AS j
  ON j.JOB_ID = e.JOB_ID
INNER JOIN hr.job_history AS h
  ON j.JOB_ID = h.JOB_ID
INNER JOIN hr.departments AS d
  ON e.EMPLOYEE_ID = h.EMPLOYEE_ID
ORDER BY
  `Nome completo` DESC,
  `Cargo` ASC;
