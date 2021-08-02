CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN 
	DECLARE qnt INT;
    SELECT COUNT(*)
    FROM hr.employees as e
    INNER JOIN hr.job_history as j
    ON e.employee_id = j.employee_id
    WHERE email = e.email
    INTO qnt;
    RETURN qnt;
END $$

DELIMITER ;
