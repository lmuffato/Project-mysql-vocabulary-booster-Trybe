USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(300))
RETURNS INT READS SQL DATA
BEGIN
DECLARE amountJobs INT;
SELECT COUNT(*)
FROM hr.job_history AS h
WHERE h.EMPLOYEE_ID = (
SELECT EMPLOYEE_ID
FROM hr.employees
WHERE employees.EMAIL LIKE email)
INTO amountJobs;
RETURN amountJobs;
END $$

DELIMITER ;
