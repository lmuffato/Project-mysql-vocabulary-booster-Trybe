USE hr;
DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(month INT, year INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE hired_amount INT;
SELECT COUNT(*)
FROM hr.employees AS h
WHERE MONTH(h.HIRE_DATE) = month AND YEAR(h.HIRE_DATE) = year
    INTO hired_amount;
    RETURN hired_amount;
END$$
DELIMITER ;
