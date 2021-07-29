USE hr;
DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes INT, ano INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE retorno INT;
SELECT
COUNT(*) FROM hr.employees
WHERE (MONTH(HIRE_DATE) = mes AND YEAR(HIRE_DATE) = ano) INTO retorno;
RETURN retorno;
END $$

DELIMITER ;

SELECT exibir_quantidade_pessoas_contratadas_por_mes_e_ano(6, 1987);
