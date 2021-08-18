USE hr;
DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes int, ano int)
RETURNS INT READS SQL DATA
BEGIN
DECLARE qtd INT;
SELECT
COUNT(*)
FROM hr.employees emp
INNER JOIN hr.job_history hist 
ON emp.EMPLOYEE_ID = hist.EMPLOYEE_ID
WHERE
emp.HIRE_DATE = mes
INTO qtd;
RETURN qtd;
END $$
DELIMITER ;
