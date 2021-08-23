DELIMITER //
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(100))
RETURNS INT READS SQL DATA 
BEGIN
DECLARE result INT;
SELECT COUNT(j.EMPLOYEE_ID)
FROM hr.job_history `j`
INNER JOIN hr.employees `e` ON j.EMPLOYEE_ID = e.EMPLOYEE_ID
WHERE e.EMAIL = email INTO result;
RETURN result;
END //
DELIMITER ;
