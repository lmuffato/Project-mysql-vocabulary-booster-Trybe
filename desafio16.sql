USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(20))
RETURNS INT READS SQL DATA
BEGIN
DECLARE jobQty INT;

SELECT COUNT(his.EMPLOYEE_ID)
FROM hr.employees AS emp
INNER JOIN hr.job_history AS his
ON emp.EMPLOYEE_ID = his.EMPLOYEE_ID
WHERE emp.EMAIL = email
INTO jobQty;
RETURN jobQty;
END $$

DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');
