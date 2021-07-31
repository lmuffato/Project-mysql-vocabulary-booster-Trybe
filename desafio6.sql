SELECT CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) AS `Nome completo`,
job.JOB_TITLE AS `Cargo`,
job_hist.START_DATE AS `Data de início do cargo`,
dep.DEPARTMENT_NAME AS `Departamento`
FROM hr.job_history AS job_hist
INNER JOIN hr.employees AS emp ON job_hist.EMPLOYEE_ID = emp.EMPLOYEE_ID
INNER JOIN hr.jobs AS job ON job_hist.JOB_ID = job.JOB_ID
INNER JOIN hr.departments AS dep ON job_hist.DEPARTMENT_ID = dep.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, `Cargo` ASC;
