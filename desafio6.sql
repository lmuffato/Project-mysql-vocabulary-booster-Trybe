SELECT
  CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
  j.JOB_TITLE AS 'Cargo',
  jh.START_DATE AS 'Data de início do cargo',
  d.DEPARTMENT_NAME AS 'Departamento'
FROM
  hr.job_history jh
  INNER JOIN hr.employees e ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
  INNER JOIN hr.jobs j ON jh.JOB_ID = j.JOB_ID
  INNER JOIN hr.departments d ON d.DEPARTMENT_ID = jh.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, Cargo;
