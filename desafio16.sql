USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email_params VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
  DECLARE total_empregos INT;
  SELECT COUNT(*)
  FROM hr.job_history
  WHERE employee_id IN (
      SELECT employee_id FROM hr.employees
      WHERE email = email_params
  )
  INTO total_empregos;
  RETURN total_empregos;
END $$

DELIMITER ;
