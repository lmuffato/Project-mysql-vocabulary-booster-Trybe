USE hr;
DELIMITER $$;

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE total_empregos INT; 
SELECT count(h.JOB_ID) 
FROM hr.job_history AS h 
INNER JOIN hr.employees AS e
ON h.EMPLOYEE_ID = e.EMPLOYEE_ID 
WHERE e.EMAIL = email INTO total_empregos;
RETURN total_empregos;
END $$

DELIMITER ; 
