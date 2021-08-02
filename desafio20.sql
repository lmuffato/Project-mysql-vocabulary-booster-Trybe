CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email_do_funcionario VARCHAR(50))
BEGIN
SELECT
CONCAT(t1.FIRST_NAME, ' ', t1.LAST_NAME) AS `Nome completo`,
(
SELECT DEPARTMENT_NAME
FROM hr.departments
WHERE t2.DEPARTMENT_ID = hr.departments.DEPARTMENT_ID
) AS `Departamento`,
(
SELECT JOB_TITLE
FROM hr.jobs
WHERE t2.JOB_ID = hr.jobs.JOB_ID
) AS `Cargo`
FROM hr.employees AS t1
INNER JOIN hr.job_history AS t2
ON t1.EMPLOYEE_ID = t2.EMPLOYEE_ID
WHERE t1.EMAIL = email_do_funcionario
ORDER BY `Departamento`, `Cargo`;
END
