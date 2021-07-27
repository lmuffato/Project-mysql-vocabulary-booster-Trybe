-- 7. Faça um relatório que mostra o histórico de cargos das pessoas empregadas que iniciaram seus cargos nos meses de janeiro, fevereiro ou março
SELECT
UCASE(CONCAT(first_name," ",last_name))
AS 'Nome completo',
jh.start_date
AS 'Data de início',
salary
AS 'Salário'
FROM
hr.employees
AS e
INNER JOIN hr.job_history
AS jh
ON e.employee_id = jh.employee_id
WHERE MONTH(jh.start_date) IN(1, 2, 3)
ORDER BY CONCAT(first_name," ",last_name) ASC, jh.start_date ASC;
