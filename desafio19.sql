DELIMITER $$
CREATE FUNCTION hr.exibir_quantidade_pessoas_contratadas_por_mes_e_ano(selected_month INT, selected_year INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE total INT;
SELECT COUNT(1)
FROM hr.employees
WHERE MONTH(HIRE_DATE) = selected_month AND YEAR(HIRE_DATE) = selected_year
INTO total;
RETURN total;
END $$
DELIMITER ;
