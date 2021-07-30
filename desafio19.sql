USE hr;
DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes INT, ano INT)
RETURNS INT READS SQL DATA
BEGIN
  DECLARE quantidade_pessoas_contratadas INT;
  SELECT COUNT(EMPLOYEE_ID) FROM employees
  WHERE MONTH(HIRE_DATE) = mes AND YEAR(HIRE_DATE) = ano
  INTO quantidade_pessoas_contratadas;
  RETURN quantidade_pessoas_contratadas;
END $$
DELIMITER ;
