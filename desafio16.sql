DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(emailfunc varchar(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE total INT;
SELECT COUNT(*) AS 'Quantidade' FROM employees
INNER JOIN job_history
ON employees.EMPLOYEE_ID = job_history.EMPLOYEE_ID
WHERE EMAIL = emailfunc
GROUP BY EMAIL
INTO total;
RETURN total;
END $$

DELIMITER ;
