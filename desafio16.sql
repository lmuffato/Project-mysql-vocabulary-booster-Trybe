USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(Valor VARCHAR(30))
RETURNS INT READS SQL DATA
BEGIN
DECLARE qtd INT;
SELECT
COUNT(*)
FROM hr.employees emp
INNER JOIN hr.job_history hist 
ON emp.EMPLOYEE_ID = hist.EMPLOYEE_ID
WHERE
emp.EMAIL = Valor
INTO qtd;
RETURN qtd;
END $$
DELIMITER ;

