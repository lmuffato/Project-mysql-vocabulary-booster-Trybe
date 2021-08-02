USE hr
DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(100))
RETURNS NUMERIC READS SQL DATA 
BEGIN
DECLARE total_empregos TINYINT;
SELECT
COUNT(J.EMPLOYEE_ID) INTO total_empregos
FROM hr.job_history AS J
INNER JOIN hr.employees AS E
ON J.EMPLOYEE_ID = E.EMPLOYEE_ID 
WHERE E.EMAIL = email;
RETURN total_empregos;
END $$
DELIMITER ;
