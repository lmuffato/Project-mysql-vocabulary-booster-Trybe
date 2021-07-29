-- Faça um relatório que mostra o histórico de cargos das pessoas empregadas que iniciaram seus cargos nos meses de janeiro, fevereiro ou março

SELECT UCASE(CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME)) `Nome completo`,
h.START_DATE `Data de início`,
e.SALARY `Salário`
FROM hr.employees AS e
INNER JOIN hr.job_history AS h
ON e.EMPLOYEE_ID = h.EMPLOYEE_ID
WHERE MONTH(h.START_DATE) IN(01, 02, 03)
ORDER BY `Nome completo` ASC, `Data de início`;
