DELIMITER $$
CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes INT, ano INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE total_contratados_mes INT;
SELECT COUNT(employee_id)
FROM employees
WHERE mes = MONTH(hire_date) AND ano = YEAR(hire_date) INTO total_contratados_mes;
RETURN total_contratados_mes;
END $$
DELIMITER ;

SELECT total_contratados_mes(6, 1987);
