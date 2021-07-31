DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
DECLARE numero INT;
SELECT COUNT(j.JOB_ID) AS 'total_empregos' FROM hr.employees AS e
INNER JOIN hr.job_history AS j
ON e.EMPLOYEE_ID = j.EMPLOYEE_ID
WHERE e.EMAIL = email
INTO numero;
RETURN numero;
END $$
DELIMITER ;
