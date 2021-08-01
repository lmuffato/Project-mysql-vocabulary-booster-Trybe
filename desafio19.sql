USE hr;

DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(month_start INT, year_start INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE employees_count INT;
SELECT COUNT(EMPLOYEE_ID) FROM employees
WHERE MONTH(HIRE_DATE) = month_start AND YEAR(HIRE_DATE) = year_start
INTO employees_count;
RETURN employees_count;
END $$

DELIMITER ;
