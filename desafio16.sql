USE hr
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(select_email VARCHAR(100))
  RETURNS INT READS SQL DATA
  BEGIN
    DECLARE how_many INT;
      SELECT COUNT(*)
      FROM hr.job_history
      WHERE EMPLOYEE_ID = (
        SELECT EMPLOYEE_ID
        FROM hr.employees
        WHERE EMAIL = select_email
      ) INTO how_many;
    RETURN how_many;

  END $$
  
DELIMITER ;
