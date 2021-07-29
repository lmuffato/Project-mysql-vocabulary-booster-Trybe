-- 18 - Faça um relatório que mostra o histórico de cargos das pessoas empregadas, mostrando as datas de início e de saída, assim como os anos que ela ficou nesse cargo
SELECT 
  CONCAT(e.first_name, ' ', e.last_name) AS `Nome completo`,
  DATE_FORMAT(j.START_DATE, '%d/%m/%Y') AS `Data de início`,
  DATE_FORMAT(j.END_DATE, '%d/%m/%Y') AS `Data de rescisão`,
  ROUND(DATEDIFF(j.END_DATE, j.START_DATE)/365, 2) AS `Anos trabalhados`
FROM hr.employees AS e
INNER JOIN hr.job_history as j
ON e.EMPLOYEE_ID = j.EMPLOYEE_ID
ORDER BY `Nome completo` ASC, `Anos trabalhados` ASC;
