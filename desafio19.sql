USE hr.employees

DELIMITER $$
CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes INT, ano INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE contratadas INT;
SELECT
COUNT(*)
FROM hr.employees AS e
WHERE (MONTH(e.HIRE_DATE) = mes) AND (YEAR(e.HIRE_DATE) = ano) INTO contratadas;
RETURN contratadas;
END $$

DELIMITER ;
