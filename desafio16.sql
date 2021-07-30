DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email_employeer VARCHAR (100)) 
RETURNS INT READS SQL DATA BEGIN DECLARE job_total INT; SELECT COUNT(jh.employee_id)
FROM job_history AS jh INNER JOIN employees AS e ON e.employee_id = jh.employee_id WHERE e.email = email_employeer INTO job_total;
RETURN job_total ;
END $$

DELIMITER ;
