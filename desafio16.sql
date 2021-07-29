-- 16 - Crie uma função chamada buscar_quantidade_de_empregos_por_funcionario no banco de dados hr que, ao receber o email de uma pessoa funcionária, retorne a quantidade de empregos presentes em seu histórico
USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(15))
RETURNS INT READS SQL DATA
BEGIN
  DECLARE total_empregos INT;
  SELECT
    COUNT(*)
  FROM hr.employees AS e
  INNER JOIN hr.job_history AS j
  WHERE e.EMPLOYEE_ID = j.EMPLOYEE_ID
  GROUP BY j.EMPLOYEE_ID, e.Email
  HAVING e.EMAIL = email INTO total_empregos;
  RETURN total_empregos;
END $$

DELIMITER ;
