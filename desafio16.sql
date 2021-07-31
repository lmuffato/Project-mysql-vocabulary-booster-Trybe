DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN 
DECLARE qt_jobs INT;
SELECT COUNT(*)
FROM hr.job_history a
INNER JOIN hr.employees b ON a.EMPLOYEE_ID = b.EMPLOYEE_ID
WHERE b.EMAIL = email INTO qt_jobs;
RETURN qt_jobs;
END $$

DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');