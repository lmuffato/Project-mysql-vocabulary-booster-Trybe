USE hr;

DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(
  mes INT,
  ano INT
)
RETURNS INT READS SQL DATA
BEGIN
    DECLARE amount_people INT;
    SELECT  COUNT(*)
    FROM employees AS e
    WHERE 
      (MONTH(e.HIRE_DATE) = mes)
      AND
      (YEAR(e.HIRE_DATE) = ano)
    INTO amount_people;
    RETURN amount_people;
END $$

DELIMITER ;
