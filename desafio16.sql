DELIMITER $$
CREATE PROCEDURE buscar_quantidade_de_empregos_por_funcionario(IN email VARCHAR(25))
BEGIN
SELECT COUNT(j.employee_id)
FROM hr.job_history AS j
INNER JOIN hr.employees as e
WHERE e.employee_id = j.job_id AND email = e.email;
END $$
DELIMITER;
