SELECT
  CONCAT(employee.first_name, ' ', employee.last_name) AS `Nome completo`,
  DATE_FORMAT(job.start_date, '%d/%m/%Y') AS `Data de início`,
  DATE_FORMAT(job.end_date, '%d/%m/%Y') AS `Data de rescisão`,
  ROUND(DATEDIFF(job.end_date, job.start_date) / 365, 2) AS `Anos trabalhados`
FROM
  hr.employees AS employee
    INNER JOIN
  hr.job_history AS job ON employee.employee_ID = job.employee_ID
ORDER BY `Nome completo`, `Anos Trabalhados`;
