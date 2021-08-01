SELECT CONCAT(employees.first_name, ' ', employees.last_name) AS 'Nome completo',
jobs.job_title AS Cargo,
job_history.start_date AS 'Data de início do cargo',
departments.department_name AS Departamento
FROM hr.employees AS employees
INNER JOIN jobs AS jobs
ON jobs.job_id = employees.job_id
INNER JOIN job_history AS job_history
ON job_history.employee_id = employees.employee_id
INNER JOIN departments AS departments
ON departments.department_id = employees.department_id
ORDER BY `Nome Completo` DESC, Cargo;

-- OBS: Todos os INNER JOINs tem que estar ligados
-- com a tabela informada no FROM. Consequentemente
-- a tabela do FROM deve conter todas as ligações
-- necessárias para ser ligada aos INNER JOINs.
