DELIMITER $$
CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN inputEmail VARCHAR(20))
BEGIN
SELECT 
    concat(emp.FIRST_NAME, ' ', emp.LAST_NAME) AS 'Nome completo',
    dep.DEPARTMENT_NAME AS 'Departamento',
    job.JOB_TITLE AS 'Cargo'
FROM
    hr.job_history AS hst
INNER JOIN hr.employees AS emp ON hst.EMPLOYEE_ID = emp.EMPLOYEE_ID
INNER JOIN hr.departments AS dep ON hst.DEPARTMENT_ID = dep.DEPARTMENT_ID
INNER JOIN hr.jobs AS job ON hst.JOB_ID = job.JOB_ID
WHERE emp.EMAIL = inputEmail
ORDER BY job.JOB_TITLE;
END $$
DELIMITER ;