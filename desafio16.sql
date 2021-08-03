USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(30))
RETURNS INT READS SQL DATA
  BEGIN
  DECLARE qtde INT;
  SELECT COUNT(*)
  FROM job_history AS job
  INNER JOIN employees AS emp
  ON job.EMPLOYEE_ID = emp.EMPLOYEE_ID
  WHERE emp.EMAIL = email
  INTO qtde;
  RETURN qtde;
END $$

DELIMITER ;
