-- 7 - Faça um relatório que mostra o histórico de cargos das pessoas empregadas que iniciaram seus cargos nos meses de janeiro, fevereiro ou março
SELECT UCASE(CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME)) 
AS `Nome completo`, 
h.START_DATE 
AS `Data de início`,
e.SALARY 
AS `Salário`
FROM hr.employees AS e
INNER JOIN hr.job_history AS h
ON h.EMPLOYEE_ID = e.EMPLOYEE_ID
WHERE MONTH(h.START_DATE) IN(1, 2, 3) -- posição de onde usar o where vista no PR da Ana Ventura
ORDER BY `Nome completo`, `Data de início`;
