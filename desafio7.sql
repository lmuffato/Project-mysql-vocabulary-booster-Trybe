-- Faça um relatório que mostra o histórico de cargos das pessoas 
-- empregadas que iniciaram seus cargos nos meses de janeiro, fevereiro ou março
SELECT UCASE(CONCAT(emp.FIRST_NAME, ' ',emp.LAST_NAME)) AS `Nome completo`,
hist.START_DATE AS `Data de início`,
emp.SALARY AS `Salário`
FROM hr.employees AS emp
INNER JOIN hr.job_history AS hist
ON emp.EMPLOYEE_ID = hist.EMPLOYEE_ID
WHERE MONTH(hist.START_DATE) BETWEEN 01 AND 03
ORDER BY `Nome completo`, `Data de início`;
