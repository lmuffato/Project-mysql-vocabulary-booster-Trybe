SELECT UCASE(CONCAT(e.first_name,' ', e.last_name)) AS 'Nome completo',
  jh.start_date AS 'Data de início',
  e.salary AS 'Salário'
FROM hr.employees AS e
  INNER JOIN hr.job_history AS jh
    ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
    WHERE MONTH(jh.start_date) IN (01, 02, 03)
ORDER BY `Nome completo`, `Data de início` ;
