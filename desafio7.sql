SELECT CONCAT(UPPER(e.first_name), ' ', UPPER(e.last_name)) AS 'Nome completo',
j.job_title AS 'Cargo',
jh.start_date AS 'Data de início do cargo',
e.salary AS 'Salário'
FROM hr.employees AS e
INNER JOIN hr.jobs AS j
INNER JOIN hr.job_history AS jh
ON jh.employee_id = e.employee_id
WHERE MONTH(jh.start_date) IN(1, 2, 3)
ORDER BY `Nome Completo` DESC, `Cargo` ASC;
