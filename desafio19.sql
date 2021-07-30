DELIMITER $$
CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano (mnth INT, yr INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE retornado INT;
SELECT 
    COUNT(EMPLOYEE_ID)
FROM
    hr.employees
WHERE
    MONTH(HIRE_DATE) = mnth
        AND YEAR(HIRE_DATE) = yr INTO retornado;
    RETURN retornado;
END $$
DELIMITER ;
