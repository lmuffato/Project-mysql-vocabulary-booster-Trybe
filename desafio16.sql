DELIMITER $$
CREATE PROCEDURE buscar_quantidade_de_empregos_por_funcionario(IN email VARCHAR(100), OUT total_empregos NUMERIC)
BEGIN
SELECT
COUNT(J.EMPLOYEE_ID) INTO total_empregos
FROM hr.job_history AS J
INNER JOIN hr.employees AS E
ON J.EMPLOYEE_ID = E.EMPLOYEE_ID 
WHERE E.EMAIL = email;
END $$
DELIMITER ;
