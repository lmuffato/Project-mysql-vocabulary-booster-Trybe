DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidade_de_empregos INT;
SELECT COUNT(employees_history.EMPLOYEE_ID)
FROM hr.employees AS employees
INNER JOIN hr.job_history AS employees_history ON employees.EMPLOYEE_ID = employees_history.EMPLOYEE_ID
WHERE employees.EMAIL = email
INTO quantidade_de_empregos;
RETURN quantidade_de_empregos;
END $$

DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');
