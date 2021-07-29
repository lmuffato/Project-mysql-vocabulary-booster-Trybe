-- 16 - Crie uma função chamada buscar_quantidade_de_empregos_por_funcionario no banco de dados hr que, ao receber o email de uma pessoa funcionária,
-- retorne a quantidade de empregos presentes em seu histórico
USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(30))
RETURNS INT READS SQL DATA
BEGIN
DECLARE total_empregos INT;
SELECT COUNT(jh.JOB_ID)
FROM hr.job_history AS jh
INNER JOIN hr.employees AS e
ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
WHERE e.EMAIL = 'NKOCHHAR' INTO total_empregos;
RETURN total_empregos;
END $$

DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');
