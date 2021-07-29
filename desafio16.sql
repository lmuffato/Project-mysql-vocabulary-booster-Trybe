USE hr;
DELIMITER $$;

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(selectedEmail VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidade INT;
SELECT COUNT(h.employee_id)
FROM hr.job_history AS h
INNER JOIN hr.employees AS e
ON e.employee_id = h.employee_id
WHERE e.email = selectedEmail
INTO quantidade;
RETURN quantidade;
END $$

DELIMITER ;
