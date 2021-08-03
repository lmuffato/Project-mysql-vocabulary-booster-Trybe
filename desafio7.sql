-- challenge 7;

SELECT UCASE(CONCAT(first_name, ' ', last_name)) AS `Nome completo`,
start_date AS `Data de início`,
salary AS Salário
FROM hr.job_history AS history_JOB
INNER JOIN hr.employees AS employees
ON employees.employee_id=history_JOB.employee_id
WHERE MONTH(start_date)=01 OR MONTH(start_date)=02 OR MONTH(start_date)=03
ORDER BY `Nome completo` ASC, `Data de início` ASC;
