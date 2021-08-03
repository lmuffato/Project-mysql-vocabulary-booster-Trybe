-- challenge 7;

SELECT UCASE(CONCAT(first_name, ' ', last_name)) AS `Nome completo`,
start_date AS `Data de início`,
salary AS Salário
FROM hr.job_history AS history_JOB
INNER JOIN hr.employees AS employees
ON employees.employee_id=history_JOB.employee_id
ORDER BY `Nome completo` ASC, `Data de início` ASC;
