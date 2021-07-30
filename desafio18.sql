SELECT
  CONCAT(E.first_name, ' ', E.last_name) AS `Nome completo`,
  DATE_FORMAT(JB.START_DATE, "%d/%m/%Y") As `Data de início`,
  DATE_FORMAT(JB.END_DATE, "%d/%m/%Y") AS `Data de rescisão`,
  ROUND(DATEDIFF(JB.END_DATE, JB.START_DATE)/365, 2) AS `Anos trabalhados`
FROM hr.employees E
INNER JOIN hr.job_history JB
ON JB.EMPLOYEE_ID = E.EMPLOYEE_ID
ORDER BY `Nome completo`, `Anos trabalhados`;
