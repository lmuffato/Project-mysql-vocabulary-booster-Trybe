USE hr;

DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email_param VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN  
  DECLARE total_jobs INT;
  DECLARE id INT;
  SELECT EMPLOYEE_ID 
  FROM employees
  WHERE EMAIL = email_param INTO id;
  SELECT COUNT(*) 
  FROM job_history
  WHERE EMPLOYEE_ID = id INTO total_jobs;
  RETURN total_jobs;
END $$

DELIMITER ;
