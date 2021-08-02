USE hr;

DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(insertMonth INT, insertYear INT)
RETURNS INT READS SQL DATA
BEGIN
  DECLARE hired_employees_total INT;
  SELECT COUNT(*) 
    FROM hr.employees AS employee
  WHERE YEAR(employee.hire_date) = insertYear 
    AND MONTH(employee.hire_date) = insertMonth
  INTO hired_employees_total;
  RETURN hired_employees_total;
END $$

DELIMITER ;

SELECT exibir_quantidade_pessoas_contratadas_por_mes_e_ano(6, 1987);
