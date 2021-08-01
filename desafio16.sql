USE hr;

DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
    DECLARE amount_jobs INT;
    SELECT  COUNT(*)
    FROM job_history AS jh
    LEFT JOIN employees AS e
    ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
    WHERE e.EMAIL = email INTO amount_jobs;
    RETURN amount_jobs;
END $$

DELIMITER ;
