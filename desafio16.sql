USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(35))
RETURNS INT READS SQL DATA
BEGIN
DECLARE jobs_history INT;
SELECT COUNT(tjh.employee_id)
FROM job_history AS tjh
INNER JOIN employees AS te
WHERE tjh.employee_id = te.employee_id AND te.email LIKE CONCAT('%', email, '%')
INTO jobs_history;
RETURN jobs_history;
END $$

DELIMITER ;
