DELIMITER $$
CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(50))
BEGIN
SELECT CONCAT(e.first_name, + ' ', + e.last_name) AS "Nome completo",
d.department_name AS "Departamento",
j.job_title AS "Cargo"
FROM job_history AS jh
INNER JOIN employees AS e
ON e.employee_id = jh.employee_id
AND e.email = email
INNER JOIN jobs AS j
ON jh.job_id = j.job_id
INNER JOIN departments AS d
ON jh.department_id = d.department_id
ORDER BY `Departamento`, `Cargo`;
END $$

DELIMITER ;

CALL exibir_historico_completo_por_funcionario('NKOCHHAR');
