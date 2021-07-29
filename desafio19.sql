-- 19 - Crie uma função chamada exibir_quantidade_pessoas_contratadas_por_mes_e_ano no banco de dados hr que, dados o mês e ano como parâmetros nessa ordem, retorna a quantidade de pessoas funcionárias que foram contratadas nesse mês e ano
USE hr;
DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(month INT, year INT)
RETURNS INT READS SQL DATA
BEGIN
  DECLARE NumberOfPeopleHired INT;
  SELECT
  COUNT(*)
  FROM hr.employees
  WHERE YEAR(HIRE_DATE)=year AND MONTH(HIRE_DATE)=month INTO NumberOfPeopleHired;
  RETURN NumberOfPeopleHired;
END $$

DELIMITER ;


