DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(50))
RETURNS VARCHAR(50) READS SQL DATA
BEGIN
	DECLARE quantidade_de_empregos INT;
  SELECT COUNT(h.EMPLOYEE_ID)
  FROM hr.employees AS e
  INNER JOIN hr.job_history AS h ON e.EMPLOYEE_ID = h.EMPLOYEE_ID
  WHERE e.EMAIL = email
  INTO quantidade_de_empregos;
  RETURN quantidade_de_empregos;
END $$

DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');
