USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
  DECLARE total INT;
  SELECT COUNT(*) AS total_jobs
  FROM job_history AS job INNER JOIN employees AS employee ON job.EMPLOYEE_ID = employee.EMPLOYEE_ID
  WHERE employee.EMAIL = email
  INTO total;
  RETURN total;
END $$

DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');
