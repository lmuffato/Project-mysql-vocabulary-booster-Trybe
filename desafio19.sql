USE hr;
DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mm int, yyyy int)
RETURNS INT READS SQL DATA
BEGIN
  DECLARE hired_people INT;
  SELECT COUNT(*) FROM hr.employees
  WHERE MONTH(HIRE_DATE) = mm AND YEAR(HIRE_DATE) = yyyy
  INTO hired_people;
  RETURN hired_people;
END $$

DELIMITER ;
