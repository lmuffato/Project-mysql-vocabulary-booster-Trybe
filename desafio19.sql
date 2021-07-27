USE hr;
DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(month_params INT, year_params INT)
RETURNS INT
READS SQL DATA
BEGIN
  DECLARE hired_employees_amount INT;
  SELECT COUNT(*)
  FROM hr.employees
  WHERE MONTH(hire_date) = month_params
  AND YEAR(hire_date) = year_params
  INTO hired_employees_amount;
  RETURN hired_employees_amount;
END $$

DELIMITER ;
