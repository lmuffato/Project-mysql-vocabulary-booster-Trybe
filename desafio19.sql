USE hr;
DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes int, ano int)
RETURNS INT READS SQL DATA
BEGIN
    DECLARE amount_employees INT;
    SELECT
      COUNT(*)
    FROM
      employees
    WHERE
      MONTH(HIRE_DATE) = 6 AND YEAR(HIRE_DATE) = 1987 INTO amount_employees;
    RETURN amount_employees;
END $$

DELIMITER ;
