USE hr;
DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes int, ano int)
RETURNS INT READS SQL DATA
BEGIN
    DECLARE quant_pessoas INT;
    SELECT COUNT(*)
    FROM hr.employees AS E
    WHERE MONTH(E.HIRE_DATE) = mes AND YEAR(E.HIRE_DATE) = ano  INTO quant_pessoas;
    RETURN quant_pessoas;
END $$

DELIMITER ;
