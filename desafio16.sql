USE hr;
DELIMITER $$
DROP FUNCTION IF EXISTS buscar_quantidade_de_empregos_por_funcionario;
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
    DECLARE quantidade_emprego INT;
    
    SELECT COUNT(jh.EMPLOYEE_ID)
    FROM  hr.job_history  AS jh
    INNER JOIN hr.employees AS e
    ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
    WHERE e.EMAIL LIKE email 
    
    INTO quantidade_emprego;
    
    RETURN quantidade_emprego;
END $$
DELIMITER ;
