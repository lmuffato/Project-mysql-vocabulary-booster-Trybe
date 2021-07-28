SELECT CONCAT(employees.first_name, ' ', employees.last_name) AS `Nome completo`,
jobs.JOB_TITLE AS `Cargo`,
history.START_DATE AS `Data de início do cargo`,
departments.DEPARTMENT_NAME AS `Departamento`
FROM hr.job_history AS history
INNER JOIN hr.employees AS employees ON employees.EMPLOYEE_ID = history.EMPLOYEE_ID
INNER JOIN hr.departments AS departments ON departments.DEPARTMENT_ID = history.DEPARTMENT_ID
INNER JOIN hr.jobs AS jobs ON jobs.JOB_ID = history.JOB_ID
ORDER BY `Nome Completo` DESC, `Cargo`;
