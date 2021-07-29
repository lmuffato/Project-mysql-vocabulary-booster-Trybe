DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(`month` INT, `year` INT)
RETURNS INT READS SQL DATA
BEGIN
  DECLARE `quantity` INT;
  SELECT
    COUNT(`employees`.EMPLOYEE_ID)
  FROM
    `hr`.employees AS `employees`
  WHERE
    MONTH(`employees`.HIRE_DATE) = `month`
    AND YEAR(`employees`.HIRE_DATE) = `year`
  INTO `quantity`;
RETURN `quantity`;
END $$

DELIMITER ;
