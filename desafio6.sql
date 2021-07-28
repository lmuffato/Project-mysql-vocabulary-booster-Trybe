SELECT CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS `Nome Completo`,
j.JOB_TITLE AS `Cargo`,
h.START_DATE AS `Data de início do cargo`,
d.DEPARTMENT_NAME AS `Departamento`
FROM hr.job_history AS h
JOIN hr.employees AS e ON e.EMPLOYEE_ID=h.EMPLOYEE_ID
JOIN hr.jobs AS j ON h.JOB_ID=j.JOB_ID
JOIN hr.departments AS d ON h.DEPARTMENT_ID=d.DEPARTMENT_ID
ORDER BY `Nome Completo` DESC, `Cargo`;
