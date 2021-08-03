SELECT
  CONCAT(E.first_name, ' ', E.last_name) 'Nome completo',
  J.job_title 'Cargo',
  H.start_date 'Data de início do cargo',
  D.department_name 'Departamento'
FROM
  hr.job_history H
  INNER JOIN hr.employees E ON H.employee_id = E.employee_id
  INNER JOIN hr.jobs J ON H.job_id = J.job_id
  INNER JOIN hr.departments D ON H.department_id = D.department_id
ORDER BY
  `Nome completo` DESC,
  `Cargo`;
