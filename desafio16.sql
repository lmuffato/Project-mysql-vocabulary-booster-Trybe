DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(param_email VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
  DECLARE total_empregos INT;
  SELECT COUNT(*)
  FROM job_history AS j_h
  INNER JOIN employees AS e
  ON j_h.EMPLOYEE_ID = e.EMPLOYEE_ID
  WHERE e.EMAIL = param_email
  INTO total_empregos;
  RETURN total_empregos;
END $$
DELIMITER ;
