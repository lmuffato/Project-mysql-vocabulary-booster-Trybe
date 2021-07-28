SELECT 
CONCAT(EMP.first_name, ' ', EMP.last_name) AS `Nome completo`,
JOB.job_title AS `Cargo`, 
JOBHIST.start_date AS `Data de início do cargo`,
DEP.department_name AS `Departamento`
FROM hr.job_history AS JOBHIST
INNER JOIN hr.employees AS EMP
ON EMP.employee_ID = JOBHIST.employee_ID
INNER JOIN hr.jobs AS JOB
ON EMP.job_ID = JOB.job_ID
INNER JOIN hr.departments AS DEP
ON DEP.department_ID = EMP.department_ID
ORDER BY `Nome Completo` DESC, `Cargo` ASC;
