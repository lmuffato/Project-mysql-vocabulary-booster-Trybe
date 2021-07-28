SELECT 
CONCAT(EMP.first_name, ' ', EMP.last_name) AS 'Nome completo',
JOB.job_title AS 'Cargo', 
JOBHIST.start_date AS 'Data de início do cargo',
DEP.department_name AS 'Departamento'
FROM hr.employees AS EMP
INNER JOIN hr.jobs AS JOB
ON EMP.job_id = JOB.job_id
INNER JOIN hr.departments AS DEP
ON DEP.department_id = EMP.department_id
INNER JOIN hr.job_history AS JOBHIST
ON EMP.employee_id = JOBHIST.employee_id
ORDER BY CONCAT(EMP.first_name, ' ', EMP.last_name) DESC, JOB.job_title ASC;
