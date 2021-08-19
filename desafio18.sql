SELECT
  CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) 'Nome completo',
  DATE_FORMAT(jobhist.START_DATE, '%d/%m/%Y') 'Data de início',
  DATE_FORMAT(jobhist.END_DATE, '%d/%m/%Y') 'Data de rescisão',
  
  ROUND(DATEDIFF(jobhist.END_DATE, jobhist.START_DATE) / 365, 2) `Anos trabalhados`
FROM
  hr.employees emp
INNER JOIN hr.job_history jobhist
  ON emp.EMPLOYEE_ID = jobhist.EMPLOYEE_ID

ORDER BY
  `Nome completo`, `Anos trabalhados`;