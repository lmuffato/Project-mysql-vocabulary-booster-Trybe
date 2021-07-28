DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(25))
RETURNS DOUBLE READS SQL DATA
BEGIN
DECLARE qty DOUBLE;
SELECT COUNT(j.employee_ID) FROM hr.job_history AS j
INNER JOIN hr.employees AS e
WHERE e.employee_ID = j.employee_ID AND e.email LIKE CONCAT('%', email, '%')
INTO qty;
RETURN qty;
END $$
DELIMITER ;
