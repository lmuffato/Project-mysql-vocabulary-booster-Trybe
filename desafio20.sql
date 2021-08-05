DELIMITER $$
CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(30))
BEGIN 
SELECT
CONCAT(te.first_name, " ", te.last_name) AS `Nome completo`,
td.department_name AS `Departamento`,
tj.job_title AS `Cargo`
FROM hr.employees AS te
INNER JOIN hr.departments AS td
INNER JOIN hr.jobs AS tj
INNER JOIN  hr.job_history AS tjh
ON (te.employee_id = tjh.employee_id
AND tjh.job_id = tj.job_id
AND tjh.department_id = td.department_id
AND te.email LIKE CONCAT("%", email, "%"))
ORDER BY 2, 3;
END $$
DELIMITER ;
