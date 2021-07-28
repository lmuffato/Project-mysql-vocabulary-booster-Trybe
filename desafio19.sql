USE hr;
DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano (mes INT, ano INT)
RETURNS INT READS SQL DATA
BEGIN
  DECLARE qtd INT;
  SELECT COUNT(*) FROM hr.employees as e
  WHERE YEAR(e.HIRE_DATE) = ano AND MONTH(e.HIRE_DATE) = mes INTO qtd;
  RETURN qtd;
END $$

DELIMITER ;
