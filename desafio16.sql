USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario (email VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
    DECLARE jobs_quantity INT;
    SELECT COUNT(*)
    FROM hr.job_history AS JH
    INNER JOIN hr.employees AS E
    WHERE E.EMPLOYEE_ID = JH.EMPLOYEE_ID AND E.EMAIL = email  INTO jobs_quantity;
    RETURN jobs_quantity;
END $$

DELIMITER ;
