USE hr;
DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes INT, ano INT)
RETURNS INT READS SQL DATA
BEGIN
    DECLARE total_employees INT;
    SELECT COUNT(*)
    FROM employees
    WHERE MONTH(HIRE_DATE) = mes AND YEAR(HIRE_DATE) = ano
    INTO total_employees;
    RETURN total_employees;
END $$

DELIMITER ;
