SELECT
  UCASE(CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME)) AS `Nome completo`,
  h.START_DATE AS `Data de início`,
  e.SALARY AS `Salário`
FROM hr.job_history h
  INNER JOIN hr.employees e
    ON MONTH(h.START_DATE) IN (1, 2, 3) AND e.EMPLOYEE_ID = h.EMPLOYEE_ID
ORDER BY `Nome completo` ASC, `Data de início` ASC;
