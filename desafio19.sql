USE hr;
DELIMITER $$;

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes INT(2),ano INT(4))
RETURNS INT READS SQL DATA
BEGIN
DECLARE total INT;
SELECT COUNT(e.HIRE_DATE) 
FROM hr.employees AS e
WHERE month(e.HIRE_DATE)=mes AND year(e.HIRE_DATE)=ano INTO total;
RETURN total;
END $$

DELIMITER ;
