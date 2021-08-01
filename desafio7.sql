SELECT
  UCASE(CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME)) AS 'Nome completo',
  h.START_DATE AS 'Data de início',
  emp.SALARY AS 'Salário'
FROM
  hr.employees AS emp
INNER JOIN hr.job_history AS h ON emp.EMPLOYEE_ID = h.EMPLOYEE_ID
WHERE
  MONTH(h.START_DATE) IN('1', '2', '3')
ORDER BY 1, 2;
