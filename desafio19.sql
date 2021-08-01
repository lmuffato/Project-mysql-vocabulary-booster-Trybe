USE hr;
DELIMITER $$
CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mo INT, ye INT)
RETURNS INT READS SQL DATA
BEGIN
  DECLARE quant INT;
  SELECT COUNT(*) QTY INTO quant
  FROM hr.employees AS e
  WHERE YEAR(e.HIRE_DATE) = ye AND MONTH(e.HIRE_DATE) = mo;
  RETURN quant;
END $$
DELIMITER ;
