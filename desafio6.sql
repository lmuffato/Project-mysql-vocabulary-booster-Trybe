SELECT
  CONCAT(e.first_name, ' ', e.last_name) AS 'Nome completo',
  j.job_title AS 'Cargo',
  h.start_date AS 'Data de início do cargo',
  d.department_name AS 'Departamento'
FROM
  hr.employees e
INNER JOIN
  hr.jobs j ON j.job_id = e.job_id
INNER JOIN
  hr.departments d ON d.department_id = e.department_id
INNER JOIN
 hr.job_history h ON e.job_id = h.job_id
ORDER BY e.first_name DESC, Cargo;
