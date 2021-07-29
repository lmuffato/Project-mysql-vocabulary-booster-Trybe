USE hr;
DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(25))
BEGIN
SELECT 
    CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) AS 'Nome completo',
    dep.DEPARTMENT_NAME AS 'Departamento',
    job.JOB_TITLE AS 'Cargo'
FROM
    hr.job_history AS job_H
        INNER JOIN
    jobs AS job ON job.JOB_ID = job_H.JOB_ID
        INNER JOIN
    departments AS dep ON dep.DEPARTMENT_ID = job_H.DEPARTMENT_ID
        INNER JOIN
    employees AS emp ON emp.EMPLOYEE_ID = job_H.EMPLOYEE_ID
WHERE emp.EMAIL = email
ORDER BY `Departamento` , `Cargo`;
END $$

DELIMITER ;
