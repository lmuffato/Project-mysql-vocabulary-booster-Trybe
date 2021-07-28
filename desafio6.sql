 SELECT
  CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
  j.JOB_TITLE AS 'Cargo',
  jh.START_DATE AS 'Data de início do cargo',
  d.DEPARTMENT_NAME AS 'Departamento'
FROM
  hr.employees e
  INNER JOIN hr.job_history jh ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
  INNER JOIN hr.jobs j ON e.JOB_ID = j.JOB_ID
  INNER JOIN hr.departments d ON e.DEPARTMENT_ID = d.DEPARTMENT_ID
ORDER BY
  `Nome completo` DESC,
  `Cargo`;
  