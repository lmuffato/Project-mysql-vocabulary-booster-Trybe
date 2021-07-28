-- Faça um relatório que mostra o histórico de cargos das pessoas empregadas
SELECT CONCAT(emp.FIRST_NAME, ' ',emp.LAST_NAME) AS `Nome completo`,
jobs.JOB_TITLE AS `Cargo`,
hist.START_DATE AS `Data de início do cargo`,
dep.DEPARTMENT_NAME AS `Departamento`
FROM hr.employees AS emp
INNER JOIN hr.job_history AS hist
ON hist.EMPLOYEE_ID = emp.EMPLOYEE_ID
INNER JOIN hr.jobs AS jobs
ON jobs.JOB_ID = hist.JOB_ID
INNER JOIN hr.departments AS dep
ON dep.DEPARTMENT_ID = hist.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, `Cargo` ASC;
