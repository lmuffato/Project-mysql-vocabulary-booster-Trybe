SELECT 
CONCAT(EMP.first_name, ' ', EMP.last_name) AS `Nome completo`,
JOB.job_title AS `Cargo`, 
JOBHIST.start_date AS `Data de início do cargo`,
DEP.department_name AS `Departamento`
FROM hr.job_history AS JOBHIST
INNER JOIN hr.employees AS EMP
ON JOBHIST.employee_ID = EMP.employee_ID
INNER JOIN hr.jobs AS JOB
ON JOB.job_ID = JOBHIST.job_ID
INNER JOIN hr.departments AS DEP
ON JOBHIST.department_ID = DEP.department_ID
ORDER BY `Nome Completo` DESC, `Cargo` ASC;
