USE hr;
DROP FUNCTION IF EXISTS buscar_quantidade_de_empregos_por_funcionario;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(employee_email VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE total_jobs INT;
SELECT COUNT(*) FROM hr.job_history AS JH
WHERE JH.EMPLOYEE_ID IN (
SELECT E.EMPLOYEE_ID FROM hr.employees AS E
WHERE E.EMAIL=employee_email
) INTO total_jobs;
RETURN total_jobs;    
END $$

DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');
