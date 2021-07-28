SELECT CONCAT(e.first_name,' ', e.last_name) AS 'Nome completo funcionário 1',
e.salary AS 'Salário funcionário 1',
e.phone_number AS 'Telefone funcionário 1',
CONCAT(e2.first_name, ' ', e2.last_name) AS 'Nome completo funcionário 2',
e2.salary AS 'Salário funcionário 2',
e2.phone_number AS 'Telefone funcionário 2'
FROM hr.employees AS e, hr.employees AS e2
WHERE e2.employee_ID <> e.employee_ID AND e.job_ID = e2.job_ID
ORDER BY CONCAT(e.first_name, ' ', e.last_name) ASC, CONCAT(e2.first_name, ' ', e2.last_name) ASC;
