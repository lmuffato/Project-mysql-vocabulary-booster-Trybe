DELIMITER $$

CREATE FUNCTION buscar_quatidade_de_empregos_por_funcionario(email VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN 
DECLARE jobs_total INT;
SELECT COUNT(1)
FROM hr.job_history AS j
INNER JOIN hr.employees AS e ON e.EMPLOYEE_ID = j.EMPLOYEE_ID
WHERE e.EMAIL = email
INTO jobs_total;
RETURN jobs_total;
END $$
DELIMITER ;
