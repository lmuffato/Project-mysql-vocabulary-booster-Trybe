DROP FUNCTION `buscar_quantidade_de_empregos_por_funcionario`;

USE hr;

DELIMITER $$;
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(employee_email VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
  DECLARE total_jobs INT;
  SELECT COUNT(*) AS `total_empregos` FROM job_history AS jh
  WHERE (
    (SELECT e.EMPLOYEE_ID FROM employees AS e
    WHERE e.EMAIL = employee_email) = jh.EMPLOYEE_ID
  ) 
  INTO total_jobs ;
  RETURN total_jobs;
END $$

DELIMITER ;
