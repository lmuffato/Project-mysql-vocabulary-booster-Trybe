USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(200))
RETURNS INT READS SQL DATA BEGIN
DECLARE total_de_empregos INT;
SELECT COUNT(j.JOB_ID) FROM hr.job_history j
INNER JOIN hr.employees e
ON e.EMPLOYEE_ID = j.EMPLOYEE_ID
WHERE e.EMAIL = email
INTO total_de_empregos;
RETURN total_de_empregos;
END $$

DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');
