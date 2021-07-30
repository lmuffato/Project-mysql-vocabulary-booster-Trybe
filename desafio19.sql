USE hr;

DELIMITER $$
CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes INT(2), ano INT(4))
RETURNS INT READS SQL DATA
BEGIN
DECLARE total INT;
SELECT 
    COUNT(*)
FROM
    employees
WHERE
    MONTH(HIRE_DATE) = 6
        AND YEAR(HIRE_DATE) = 1987 INTO total;
RETURN total;
END $$
DELIMITER ;
