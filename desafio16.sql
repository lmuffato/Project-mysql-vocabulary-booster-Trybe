USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email_param VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
DECLARE total_empregos INT;
SELECT COUNT(*)
FROM hr.employees AS e
JOIN hr.job_history AS j
ON e.employee_id = j.employee_id
GROUP BY j.employee_id, e.email
HAVING e.email = email_param
INTO total_empregos;
RETURN total_empregos;
END $$

DELIMITER ;
