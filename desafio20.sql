USE hr;

DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(100))
BEGIN
SELECT 
    CONCAT(employee.first_name, ' ', employee.last_name) AS `Nome completo`,
    departament.department_name AS `Departamento`,
    job.job_title AS `Cargo`
FROM
    hr.job_history AS jh
        INNER JOIN
    hr.departments AS departament ON jh.department_id = departament.department_id
        INNER JOIN
    hr.employees AS employee ON jh.employee_id = employee.employee_id
        INNER JOIN
    hr.jobs AS job ON jh.job_id = job.job_id
WHERE
    employee.email = email
ORDER BY `Departamento`, `Cargo`;
END $$

DELIMITER ;

CALL exibir_historico_completo_por_funcionario('NKOCHHAR');
