USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE numero_empregos INT;
SELECT COUNT(j.EMPLOYEE_ID) FROM hr.job_history j
INNER JOIN hr.employees e ON j.EMPLOYEE_ID = e.EMPLOYEE_ID
WHERE email = e.EMAIL
INTO numero_empregos;
RETURN numero_empregos;
END $$
  
DELIMITER ;
