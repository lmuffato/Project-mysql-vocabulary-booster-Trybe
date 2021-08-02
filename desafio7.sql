SELECT UCASE(CONCAT(first_name," ",last_name))
AS `Nome completo`,
sd.start_date
AS `Data de início`,
salary
AS `Salário`
FROM
hr.employees
AS e
INNER JOIN hr.job_history
AS sd
ON e.employee_id = sd.employee_id
WHERE MONTH(sd.start_date) IN(1, 2, 3)
ORDER BY `Nome completo` ASC, sd.start_date ASC;
