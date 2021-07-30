USE hr
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(
  email VARCHAR(30))
  RETURNS INT READS SQL DATA
  BEGIN
  DECLARE quantidade_de_empregos INT;
  SELECT COUNT(jh.EMPLOYEE_ID)
  FROM hr.job_history jh
  INNER JOIN hr.employees e
  ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
  WHERE
  e.EMAIL = email
  INTO quantidade_de_empregos;
  RETURN quantidade_de_empregos;
  END $$
DELIMITER ;
