USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email varchar(25))
RETURNS INT READS SQL DATA
BEGIN
DECLARE result INT;
SELECT COUNT(job_history.EMPLOYEE_ID) AS 'total_empregos'
FROM job_history AS job_history
INNER JOIN employees AS employees
ON job_history.EMPLOYEE_ID = employees.EMPLOYEE_ID
WHERE employees.EMAIL = email INTO result;
RETURN result;
END $$

DELIMITER ;
