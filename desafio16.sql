USE hr.employees
DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(64))
RETURNS INT READS SQL DATA
BEGIN
DECLARE jobs INT;
SELECT
COUNT(j.EMPLOYEE_ID) INTO jobs
FROM hr.employees AS e
INNER JOIN hr.job_history AS j ON e.EMPLOYEE_ID = j.EMPLOYEE_ID
WHERE e.EMAIL = email;
RETURN jobs;
END $$

DELIMITER ;
