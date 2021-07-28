DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(e_mail VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE qtd INT;
SELECT COUNT(*)
FROM job_history AS jh
LEFT JOIN employees AS e
ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
WHERE EMAIL = e_mail
INTO qtd;
RETURN qtd;
END $$

DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');
