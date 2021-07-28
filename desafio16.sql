USE hr;

DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario (email VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
  DECLARE quantidade INT;
  SELECT COUNT(*) 'total_empregos'
    FROM hr.job_history
  WHERE EMPLOYEE_ID IN (
    SELECT EMPLOYEE_ID
      FROM hr.employees E
    WHERE E.EMAIL = email
  )
  INTO quantidade;
  RETURN quantidade;
END $$

DELIMITER ;
