-- Faça um relatório que mostra o histórico de cargos das pessoas empregadas

SELECT CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) `Nome completo`,
j.JOB_TITLE `Cargo`,
h.START_DATE `Data de início do cargo`,
d.DEPARTMENT_NAME `Departamento`
FROM hr.employees AS e
INNER JOIN hr.jobs AS j
ON e.JOB_ID = j.JOB_ID
INNER JOIN hr.departments AS d
ON e.DEPARTMENT_ID = d.DEPARTMENT_ID
INNER JOIN hr.job_history AS h
ON h.EMPLOYEE_ID = e.EMPLOYEE_ID
ORDER BY `Nome completo` DESC, `Cargo` ASC;
