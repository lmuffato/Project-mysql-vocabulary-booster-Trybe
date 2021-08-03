SELECT CONCAT(employees.first_name, ' ', employees.last_name) AS 'Nome completo',
jobs.job_title AS Cargo,
job_history.start_date AS 'Data de início do cargo',
departments.department_name AS Departamento
FROM hr.job_history AS job_history
INNER JOIN employees AS employees
ON employees.employee_id = job_history.employee_id
INNER JOIN jobs AS jobs
ON jobs.job_id = job_history.job_id
INNER JOIN departments AS departments
ON departments.department_id = job_history.department_id
ORDER BY `Nome Completo` DESC, Cargo;

-- OBS: Identificar a tabela principal que faz as ligações
-- com todas as outras tabelas informadas nos INNER JOINs e ONs
