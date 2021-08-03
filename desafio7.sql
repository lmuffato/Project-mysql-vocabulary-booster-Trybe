SELECT
  UCASE(CONCAT(E.first_name, ' ', E.last_name)) AS 'Nome completo',
  H.start_date AS 'Data de início',
  E.salary AS 'Salário'
FROM
  hr.job_history AS H
  INNER JOIN hr.employees AS E ON H.employee_id = E.employee_id
WHERE
  MONTH(H.start_date) IN (1, 2, 3)
ORDER BY
  `Nome completo`,
  `Data de início`;
