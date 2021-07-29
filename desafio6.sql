SELECT CONCAT(a.FIRST_NAME, ' ', a.LAST_NAME) AS 'Nome completo', 
  b.JOB_TITLE AS 'Cargo',
  c.START_DATE AS 'Data de início do cargo',
  d.DEPARTMENT_NAME AS 'Departamento'
FROM 
  hr.job_history AS c
    INNER JOIN hr.jobs AS b
      ON c.JOB_ID = b.JOB_ID
    INNER JOIN hr.employees AS a
      ON a.EMPLOYEE_ID = c.EMPLOYEE_ID
    INNER JOIN hr.departments AS d
      ON d.DEPARTMENT_ID = c.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, `Cargo`;
