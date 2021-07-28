DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(`month` int, `year` int)
RETURNS INT READS SQL DATA
BEGIN
DECLARE total_hired_employees INT;
SELECT COUNT(*) FROM employees
WHERE MONTH(HIRE_DATE) = `month`
AND YEAR(HIRE_DATE) = `year` INTO total_hired_employees;
RETURN total_hired_employees;
END $$

DELIMITER ;
