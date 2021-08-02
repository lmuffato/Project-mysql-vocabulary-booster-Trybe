USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email_employee VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE quant_jobs INT;
SELECT COUNT(*)
FROM employees E
INNER JOIN job_history JH
ON E.EMPLOYEE_ID = JH.EMPLOYEE_ID
WHERE E.EMAIL = email_employee INTO quant_jobs;
RETURN quant_jobs;
END $$

DELIMITER ;
