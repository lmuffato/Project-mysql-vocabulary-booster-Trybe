DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(`email` VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
  DECLARE `quantity` INT;
  SELECT
    COUNT(`job_history`.EMPLOYEE_ID)
  FROM
    `hr`.job_history AS `job_history`
    INNER JOIN `hr`.employees AS `employees` ON `employees`.EMPLOYEE_ID = `job_history`.EMPLOYEE_ID
  WHERE `employees`.EMAIL = `email`
  INTO `quantity`;
RETURN `quantity`;
END $$

DELIMITER ;
