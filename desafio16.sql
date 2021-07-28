USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario (email VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
  DECLARE qtd INT;
  SELECT COUNT(*) AS `total_empregos`FROM hr.job_history
  WHERE EMPLOYEE_ID IN (SELECT EMPLOYEE_ID FROM hr.employees AS e
    WHERE e.EMAIL = email) INTO qtd;
    RETURN qtd;
END $$

DELIMITER ;
