USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(80))
RETURNS INT READS SQL DATA
BEGIN
DECLARE empregos INT;
SELECT COUNT(job_hist.JOB_ID)
FROM job_history AS job_hist
INNER JOIN employees AS emp
ON job_hist.EMPLOYEE_ID = emp.EMPLOYEE_ID
WHERE emp.EMAIL = email
INTO empregos;
RETURN empregos;
END $$

DELIMITER ;
