USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE total INT;
SELECT COUNT(*) FROM job_history
WHERE EMPLOYEE_ID IN (
SELECT EMPLOYEE_ID
FROM employees
WHERE email=employees.EMAIL
)
INTO total;
RETURN total;
END $$

DELIMITER ;
