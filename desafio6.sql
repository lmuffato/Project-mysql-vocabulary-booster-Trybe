SELECT 
  CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) 'Nome completo',
  J.JOB_TITLE 'Cargo',
  H.START_DATE 'Data de início do cargo',
  D.DEPARTMENT_NAME 'Departamento'
FROM
  hr.job_history H
        INNER JOIN
    hr.employees E ON H.EMPLOYEE_ID = E.EMPLOYEE_ID
        INNER JOIN
    hr.jobs J ON H.JOB_ID = J.JOB_ID
        INNER JOIN
    hr.departments D ON H.DEPARTMENT_id = D.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, `Cargo`;
