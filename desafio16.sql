DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(100))
RETURNS INT READS SQL DATA 
BEGIN
DECLARE total_empregos INT;
SELECT
COUNT(J.EMPLOYEE_ID) 
FROM hr.job_history AS J
INNER JOIN hr.employees AS E
ON J.EMPLOYEE_ID = E.EMPLOYEE_ID 
WHERE E.EMAIL = email INTO total_empregos;
RETURN total_empregos;
END $$
DELIMITER ;
