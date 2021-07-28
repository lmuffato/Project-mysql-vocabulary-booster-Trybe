SELECT
  CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) AS 'Nome completo',
  J.JOB_TITLE AS 'Cargo',
  JH.START_DATE AS 'Data de início do cargo',
  D.DEPARTMENT_NAME AS 'Departamento'
FROM
  hr.job_history AS JH
  INNER JOIN hr.employees AS E ON E.EMPLOYEE_ID = JH.EMPLOYEE_ID
  INNER JOIN hr.jobs AS J ON JH.JOB_ID = J.JOB_ID
  INNER JOIN hr.departments AS D ON JH.DEPARTMENT_ID = D.DEPARTMENT_ID
ORDER BY
  `Nome Completo` DESC,
  Cargo;
