DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes VARCHAR(2), ano VARCHAR(4))
RETURNS INT READS SQL DATA
BEGIN
DECLARE people_hired INT;
SELECT COUNT(*) FROM hr.employees
WHERE mes = MONTH(hire_date) AND ano = YEAR(hire_date)
INTO people_hired;
RETURN people_hired;
END $$

DELIMITER ;
