USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email varchar(25))
RETURNS INT READS SQL DATA
BEGIN
    DECLARE total_jobs INT;
    SELECT COUNT(jh.EMPLOYEE_ID)
    FROM job_history AS jh
    INNER JOIN employees AS e
    WHERE e.employee_ID = jh.employee_ID AND e.email LIKE CONCAT('%', email, '%')
    INTO total_jobs;
    RETURN total_jobs;
END $$

DELIMITER ;
