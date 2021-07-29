USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
    DECLARE amount INT;
    SELECT
      COUNT(*)
    FROM
      hr.employees e
    INNER JOIN
      hr.job_history jh
    WHERE e.EMPLOYEE_ID = jh.EMPLOYEE_ID AND e.EMAIL LIKE CONCAT('%', email, '%') INTO amount;
    RETURN amount;
END $$

DELIMITER ;
