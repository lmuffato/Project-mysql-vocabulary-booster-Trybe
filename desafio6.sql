SELECT 
    CONCAT(emp.first_name, ' ', emp.last_name) AS 'Nome completo', 
    job.job_title AS Cargo, 
        jobHistory.start_date AS 'Data de início do cargo',
    dep.department_name AS 'Departamento'
FROM hr.employees AS emp
INNER JOIN hr.job_history AS jobHistory
ON emp.employee_id = jobHistory.employee_id
INNER JOIN hr.jobs AS job
ON jobHistory.job_id = job.job_id
INNER JOIN hr.departments AS dep
ON jobHistory.department_id = dep.department_id
ORDER BY `Nome Completo` DESC, Cargo;
